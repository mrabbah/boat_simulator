using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExternalBoatAgent : AbstractBoatAgent
{
    

    public override void CollectObservations()
    {
        
        //float normalized_x = (target.transform.position.x - transform.position.x) / (target.transform.position.x - startPosition.x);
        //float normalized_z = (target.transform.position.z - transform.position.z) / (target.transform.position.z - startPosition.z);
        //float normalized_y = (target.transform.position.y - transform.position.y) / (target.transform.position.y - startPosition.y);

        //Debug.Log("normalized coordinate : ( " + normalized_x +" , " + normalized_z + " , " + normalized_y + ")");
        AddVectorObs(target.transform.position.x);
        AddVectorObs(target.transform.position.z);
        AddVectorObs(target.transform.position.y);

        float normalized_rotation_x = (transform.rotation.x % 360);// 360;
        float normalized_rotation_z = (transform.rotation.z % 360);// 360;
        float normalized_rotation_y = (transform.rotation.y % 360);// 360;

        //Debug.Log("Rotation : ( " + normalized_rotation_x + " , " + normalized_rotation_z + " , " + normalized_rotation_y + ")");
        AddVectorObs(normalized_rotation_x);
        AddVectorObs(normalized_rotation_z);
        AddVectorObs(normalized_rotation_y);

        //finalspeed = 6 if any relation with this
        float normalized_velocity_x = m_rigidbody.velocity.x;// 20f;
        float normalized_velocity_z = m_rigidbody.velocity.z;// 20f;
        float normalized_velocity_y = m_rigidbody.velocity.y;// 20f;

        //Debug.Log("Velocity : ( " + normalized_velocity_x + " , " + normalized_velocity_z + " , " + normalized_velocity_y + ")");
        AddVectorObs(normalized_velocity_x);
        AddVectorObs(normalized_velocity_z);
        AddVectorObs(normalized_velocity_y);

        //AddVectorObs(getDistanceFromTarget());
        //AddVectorObs(getSignedAngelFromTarget());

    }

    public override void AgentAction(float[] vectorAction, string textAction)
    {
        //Debug.Log("vectorAction[0] = " + vectorAction[0] + " vectorAction[1] = " + vectorAction[1]);
        m_verticalInput = vectorAction[0];
        m_horizontalInput = vectorAction[1] ;// 10f;

        m_verticalInput = Mathf.Clamp(m_verticalInput, -1f, 1f);
        m_horizontalInput = Mathf.Clamp(m_horizontalInput, -1f, 1f);

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
        //Debug.Log("Accel : " + accel);
        Monitor.Log("Accel :", accel, MonitorType.slider);
        m_rigidbody.AddRelativeForce(Vector3.forward * accel);

        m_rigidbody.AddRelativeTorque(
            m_verticalInput * -m_accelerationTorqueFactor,
            m_horizontalInput * m_turningFactor,
            m_horizontalInput * -m_turningTorqueFactor
        );
        /*if (rudder != null)
        {
            rudder.localRotation = Quaternion.Euler(0, m_horizontalInput * -25, 90);
        }*/
        if(drawLine) {
            targetFollower.SetPosition(0, transform.position);
            targetFollower.SetPosition(1, target.position);
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


        //targetDir = target.position - transform.position;

        //Debug.Log("angle = " + angle);

        if (IsDone() == false)
        {
            CalculReward();

        }


    }


    protected override void CalculReward() {

        SetReward(-0.01f); //We want minimize number of steps so we penalize for each new step before convege


        dist_n = getDistanceFromTarget();//Vector3.Distance(transform.position, target.position);
        angle_n = getAngleFromTarget();
        //Debug.Log("dist = " + dist_n + " angle = " + angle_n + " s angle = " + getSignedAngelFromTarget());

        float reward_1 = (startDistance - Mathf.Clamp(dist_n, 0, startDistance)) / startDistance;
        float reward_2 = Mathf.Exp(-angle_n);
        float reward_3 = -Mathf.Atan(dist_n - dist_n_1) * 2 / Mathf.PI;
        float reward_4 = -Mathf.Atan(angle_n - angle_n_1) * 2 / Mathf.PI;

        float w1 = 1f;
        float w2 = 1f;
        float w3 = 10f;
        float w4 = 10f;
        float reward = w1 * reward_1 + w2 * reward_2 + w3 * reward_3 + w4 * reward_4;
        //Debug.Log("r1 = " + reward_1 + " r2 = " + reward_2 + " r3 = " + reward_3 + " r4 = " + reward_4);
        //Debug.Log("r = " + reward);

        AddReward(reward);



        //If we are near to target stop simulation
        if (dist_n <= min_distance_reward)
        {
            SetReward(10f);
            Done();
            Debug.Log("Goal achieved reward = " + GetReward());

            return;
        }

        //Debug.Log("reward = " + GetReward());
        DrawStats();

        //Save current state to the next iteration
        dist_n_1 = dist_n;
        angle_n_1 = angle_n;
    }


}
