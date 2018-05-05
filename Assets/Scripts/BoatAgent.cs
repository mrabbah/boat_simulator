using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoatAgent : AbstractBoatAgent
{
   
    protected override void CalculReward() {

        SetReward(-0.01f); //We want minimize number of steps so we penalize for each new step before convege


        dist_n = getDistanceFromTarget();//Vector3.Distance(transform.position, target.position);
        angle_n = getAngleFromTarget();
        //Debug.Log("dist = " + dist_n + " angle = " + angle_n + " s angle = " + getSignedAngelFromTarget());

        float reward_1 = (startDistance - Mathf.Clamp(dist_n, 0, startDistance)) / startDistance;
        float reward_2 = Mathf.Exp(-angle_n); //The angle_n is never greater than 180 degrees, 
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



        if(angle_n > 40) {
            //SetReward(-1);
            Done();
        }

        //If the boat  has reversed we stop the simulation
        if (Mathf.Abs(transform.rotation.z % 360) > 90f || Mathf.Abs(transform.rotation.x % 360) > 90f)
        {
            SetReward(-1f);
            Done();
            Debug.Log("Boat reversed reward = " + GetReward());
            return;
        }

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
