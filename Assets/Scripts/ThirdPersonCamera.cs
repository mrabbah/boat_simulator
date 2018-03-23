using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThirdPersonCamera : MonoBehaviour {

    public float distanceAway;
    public float distanceUp;
    public float smooth;

    private Transform follow;
    private Vector3 targetPosition;

	
	void Start () {
        follow = this.transform.parent.gameObject.transform;
	}
	
	
	void LateUpdate () {
        if(follow.position.y + 12 > 0) {
            targetPosition = follow.position + follow.up * distanceUp - follow.forward * distanceAway;
            transform.position = Vector3.Lerp(transform.position, targetPosition, smooth * Time.deltaTime);

            transform.LookAt(follow);
        } else {
            targetPosition = new Vector3(follow.position.x + follow.up.x * distanceUp - follow.forward.x * distanceAway, 
                                         10, 
                                         follow.position.z + follow.up.z * distanceUp - follow.forward.z * distanceAway);
            transform.position = Vector3.Lerp(transform.position, targetPosition, smooth * Time.deltaTime);

            transform.LookAt(follow);
        }
        	
    }
}
