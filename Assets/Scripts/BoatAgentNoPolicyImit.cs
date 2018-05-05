using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoatAgentNoPolicyImit : AbstractBoatAgent
{


    protected override void CalculReward() {

        SetReward(-0.01f); //We want minimize number of steps so we penalize for each new step before convege


        dist_n = getDistanceFromTarget();//Vector3.Distance(transform.position, target.position);

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

    }


}
