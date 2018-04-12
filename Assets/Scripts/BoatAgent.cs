using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoatAgent : Agent
{

    [SerializeField] private List<GameObject> m_motors;

    [SerializeField] private bool m_enableAudio = true;
    [SerializeField] private AudioSource m_boatAudioSource;
    [SerializeField] private float m_boatAudioMinPitch = 0.4F;
    [SerializeField] private float m_boatAudioMaxPitch = 1.2F;

    [SerializeField] public float m_FinalSpeed = 100F;
    [SerializeField] public float m_InertiaFactor = 0.005F;
    [SerializeField] public float m_turningFactor = 2.0F;
    [SerializeField] public float m_accelerationTorqueFactor = 35F;
    [SerializeField] public float m_turningTorqueFactor = 35F;

    private float m_verticalInput = 0F;
    private float m_horizontalInput = 0F;
    private Rigidbody m_rigidbody;
    private Vector2 m_androidInputInit;

    private float accel = 0;
    private float accelBreak;

    public Transform rudder;
    public Transform target;
    private Vector3 startPosition;
    private float DIS_EPSILON = 20F;


    void Start()
    {
        // base.Start();
        m_rigidbody = GetComponent<Rigidbody>();
        startPosition = transform.position;
        // m_rigidbody.drag = 1;
        //  m_rigidbody.angularDrag = 1;
        accelBreak = m_FinalSpeed * 0.3f;
    }


    public override List<float> CollectState()
    {
        List<float> state = new List<float>();

        state.Add(transform.position.x);
        state.Add(transform.position.z);
        state.Add(transform.position.y);

        state.Add(transform.rotation.x);
        state.Add(transform.rotation.z);
        state.Add(transform.rotation.y);

        state.Add(m_rigidbody.velocity.x);
        state.Add(m_rigidbody.velocity.z);
        state.Add(m_rigidbody.velocity.y);


        return state;
    }

    public override void AgentStep(float[] act)
    {

        float dist = Vector3.Distance(transform.position, target.position);

        if (brain.brainParameters.actionSpaceType == StateType.continuous)
        {
            m_verticalInput = act[0];
            m_horizontalInput = act[1];

            if (m_verticalInput > 0)
            {
                if (accel < m_FinalSpeed) { accel += (m_FinalSpeed * m_InertiaFactor); accel *= m_verticalInput; }
            }
            else if (m_verticalInput == 0)
            {
                if (accel > 0) { accel -= m_FinalSpeed * m_InertiaFactor; }
                if (accel < 0) { accel += m_FinalSpeed * m_InertiaFactor; }
            }
            else if (m_verticalInput < 0)
            {
                if (accel > -accelBreak) { accel -= m_FinalSpeed * m_InertiaFactor * 2; }
            }

            m_rigidbody.AddRelativeForce(Vector3.forward * accel);

            m_rigidbody.AddRelativeTorque(
                m_verticalInput * -m_accelerationTorqueFactor,
                m_horizontalInput * m_turningFactor,
                m_horizontalInput * -m_turningTorqueFactor
            );
            if (rudder != null)
            {
                rudder.localRotation = Quaternion.Euler(0, m_horizontalInput * -25, 90);
            }
            if (m_motors.Count > 0)
            {

                float motorRotationAngle = 0F;
                float motorMaxRotationAngle = 70;

                motorRotationAngle = -m_horizontalInput * motorMaxRotationAngle;

                for (int i = 0; i < m_motors.Count; i++)
                {
                    float currentAngleY = m_motors[i].transform.localEulerAngles.y;
                    if (currentAngleY > 180.0f)
                        currentAngleY -= 360.0f;

                    float localEulerAngleY = Lerp(currentAngleY, motorRotationAngle, Time.deltaTime * 10);
                    m_motors[i].transform.localEulerAngles = new Vector3(
                        m_motors[i].transform.localEulerAngles.x,
                        localEulerAngleY,
                        m_motors[i].transform.localEulerAngles.z
                    );
                }
            }

            if (m_enableAudio && m_boatAudioSource != null)
            {

                float pitchLevel = m_boatAudioMaxPitch * Mathf.Abs(m_verticalInput);
                if (m_verticalInput < 0) pitchLevel *= 0.7f;

                if (pitchLevel < m_boatAudioMinPitch) pitchLevel = m_boatAudioMinPitch;


                float smoothPitchLevel = Lerp(m_boatAudioSource.pitch, pitchLevel, Time.deltaTime * 0.5f);

                m_boatAudioSource.pitch = smoothPitchLevel;
            }
            
            if (done == false)
            {
                reward = 1f / dist;
            }
        }
        else
        {
            int action = (int)act[0];
           
            if (done == false)
            {
                reward = 1f / dist;
            }
        }

        //Debug.Log("Distance to target = " + dist.ToString());
        if (dist < DIS_EPSILON)
        {
            done = true;
            reward = 1f;
        }
    }

    public override void AgentReset()
    {
        m_rigidbody.transform.rotation = new Quaternion(0f, 0f, 0f, 0f);

        m_rigidbody.velocity = new Vector3(0f, 0f, 0f);
        transform.position = startPosition;
        //transform.rotation = startState.rotation;
    }

    public override void AgentOnDone()
    {

    }

    static float Lerp(float from, float to, float value)
    {
        if (value < 0.0f) return from;
        else if (value > 1.0f) return to;
        return (to - from) * value + from;
    }
}
