using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[RequireComponent(typeof(Rigidbody))]
public class BoatSim : MonoBehaviour
{
    public Transform propeller;
    public Transform rudder;
    public Transform center_of_mass;
    public float velocity = 0.0F;
    public float angle;
    //public float getRpm() { return rpm; } private void setRpm(float newVal) { this.rpm = newVal; }
    public float engine_max_rpm = 6000.0F;
    public float acceleration_cst = 2.0F;
    public float rudder_min_angle = -20.0F;
    public float rudder_max_angle = 20.0F;

    private float cooldown_factor = 1F;
    private Rigidbody rb;
    private LineRenderer arraw;
    private Vector3 centerofmass;
    private float EPSILON = 1e-10F;

    void Awake()
    {
        velocity = 0.0F;
        rb = this.GetComponent<Rigidbody>();
        //Debug.Log(rb.centerOfMass.ToString());
        arraw = this.GetComponent<LineRenderer>();
        if(rb == null) {
            Debug.LogError("No regid body is attached to the boat");
        }
        if(center_of_mass == null ) {
            centerofmass = rb.centerOfMass;
        } else {
            centerofmass = center_of_mass.transform.position;
            rb.centerOfMass = centerofmass;
        }
        arraw.SetPosition(0, this.transform.position);
        arraw.SetPosition(1, centerofmass);
    }

    /*void OnDrawGizmos()
    {
        Handles.Label(propeller.position, rpm.ToString());
    }*/

    // Update is called once per frame
    void Update()
    {
        //Debug.Log(propeller.position.ToString());
        if (Input.GetKey(KeyCode.Q)) { //Turn left
            angle += 0.9F;
            angle = Mathf.Clamp(angle, rudder_min_angle, rudder_max_angle);
        }

        if (Input.GetKey(KeyCode.D)) { //Turn right
            angle -= 0.9F;
            angle = Mathf.Clamp(angle, rudder_min_angle, rudder_max_angle);
        }

        if (Input.GetKey(KeyCode.Z)) { //Go Forward
            velocity += acceleration_cst  / engine_max_rpm;
            if (velocity > 1)
            {
                velocity = 1;
            }
        }
    
        if (Input.GetKey(KeyCode.S)) //slow down
        {
            velocity -= acceleration_cst  / engine_max_rpm;
            if (velocity < -1)
            {
                velocity = -1;
            }
        }

        if (Input.GetKey(KeyCode.H)) //slow down
        {
            velocity = 0;
        }

        //energie synetique 
        if(velocity < 0) {
            velocity += cooldown_factor / rb.mass;
            if (velocity > 0)
            {
                velocity = 0;
            }
        } else if(velocity > 0) {
            velocity -= cooldown_factor / rb.mass;
            if (velocity < 0)
            {
                velocity = 0;
            }
        }


    }

    void FixedUpdate() {

        moveBoat();
        buoyancy();

    }

    void moveBoat() {
        
        //propeller.localRotation = Quaternion.Euler(
        //    (propeller.localRotation.eulerAngles + new Vector3(0, 0, -frame_rpm)));
        Vector3 force = (transform.forward * velocity * engine_max_rpm).normalized + propeller.position;//propellers_constant * rpm;//* Time.deltaTime

        Vector3 force_direction = Quaternion.Euler(0, angle, 0) * force;


        if (System.Math.Abs(velocity) > EPSILON)
        {
            rb.AddForce(new Vector3(0, 0.2F, 1) * velocity * engine_max_rpm * rb.mass / 100, ForceMode.Force);
            rb.AddTorque(transform.forward * Time.deltaTime * velocity * angle * rb.mass);
            //* 
        }
        //rb.AddTorque(transform.up * angle * velocity * engine_max_rpm * rb.mass);





        arraw.SetPosition(0, propeller.position);
        arraw.SetPosition(1, force_direction);


        rudder.localRotation = Quaternion.Euler(0, angle, 90);


    }

    void buoyancy() {
        
    }

}
