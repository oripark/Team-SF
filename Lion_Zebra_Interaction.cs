using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Lion_Zebra_Interaction : MonoBehaviour
{
    Animator ani;
    // Start is called before the first frame update
    void Start()
    {
        ani = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        if (ani.GetBool("Crush"))
        {
            GameObject.Find("Lion").transform.position = Vector3.MoveTowards(GameObject.Find("Lion").transform.position, GameObject.Find("Zebra_target").transform.position, 0);
        }

        if (create_dict.animal_list["Zebra_target"] && create_dict.animal_list["Lion_target"])
        {
            ani.SetBool("Interaction", true);
            if (ani.GetCurrentAnimatorStateInfo(0).IsName("Run")) {
                GameObject.Find("Lion").transform.LookAt(GameObject.Find("Zebra").transform.position);
                GameObject.Find("Lion").transform.position = Vector3.MoveTowards(GameObject.Find("Lion").transform.position, GameObject.Find("Zebra_target").transform.position, 0.7f * Time.deltaTime);
            }

        }
        else
        {
            if (!ani.GetBool("Interaction"))
            {
                ani.SetBool("Crush", false);
            }
            if (((int)GameObject.Find("LT_pos").transform.position.x == (int)GameObject.Find("Lion").transform.position.x) && ((int)GameObject.Find("LT_pos").transform.position.z == (int)GameObject.Find("Lion").transform.position.z))
            {
                ani.SetBool("Interaction", false);
                transform.position = transform.parent.position;
                transform.rotation = transform.parent.rotation;
            }
            else
            {
                ani.SetBool("Crush", false);
                if (ani.GetCurrentAnimatorStateInfo(0).IsName("Run"))
                {
                    GameObject.Find("Lion").transform.LookAt(GameObject.Find("Lion_target").transform.position);
                    GameObject.Find("Lion").transform.position = Vector3.MoveTowards(GameObject.Find("Lion").transform.position, GameObject.Find("Lion_target").transform.position, Time.deltaTime);
                }
            }
        }
    }
    private void OnCollisionEnter(Collision collision)
    {
        ani.SetBool("Crush", true);
    }
}
