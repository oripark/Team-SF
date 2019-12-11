using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Butterfly_Flower_Interaction : MonoBehaviour
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
        if (ani.GetCurrentAnimatorStateInfo(0).IsName("Butterfly_TakeFlight"))
        {
            transform.position += new Vector3(0, 0.01f, 0);
        }
        if (ani.GetBool("Crush"))
        {
            GameObject.Find("Butterfly").transform.position = Vector3.MoveTowards(GameObject.Find("Butterfly").transform.position, GameObject.Find("Flower").transform.position, 0);
        }

        if (create_dict.animal_list["Butterfly_target"] && create_dict.animal_list["Flower_target"])
        {
            ani.SetBool("Interaction", true);

            if (ani.GetCurrentAnimatorStateInfo(0).IsName("Butterfly_Fly"))
            {
                GameObject.Find("Butterfly").transform.LookAt(GameObject.Find("Flower").transform.position);
                GameObject.Find("Butterfly").transform.position = Vector3.MoveTowards(GameObject.Find("Butterfly").transform.position, new Vector3(GameObject.Find("Flower").transform.position.x, GameObject.Find("Flower").transform.position.y+1.3f, GameObject.Find("Flower").transform.position.z), 0.5f * Time.deltaTime);
            }
        }
        else
        { 
            if (!ani.GetBool("Interaction"))
            {
                ani.SetBool("Crush", false);
            }

            if (((int)GameObject.Find("BT_pos").transform.position.x == (int)GameObject.Find("Butterfly").transform.position.x) && ((int)GameObject.Find("ET_pos").transform.position.z == (int)GameObject.Find("Butterfly").transform.position.z))
            {
                ani.SetBool("Interaction", false);
                transform.position = transform.parent.position;
                transform.rotation = transform.parent.rotation;
            }
            else
            {
                ani.SetBool("Crush", false);
                if (ani.GetCurrentAnimatorStateInfo(0).IsName("Butterfly_Fly"))
                {
                    GameObject.Find("Butterfly").transform.LookAt(GameObject.Find("Butterfly_target").transform.position);
                    GameObject.Find("Butterfly").transform.position = Vector3.MoveTowards(GameObject.Find("Butterfly").transform.position, GameObject.Find("Butterfly_target").transform.position, Time.deltaTime);
                }
            }
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        ani.SetBool("Crush", true);
    }

    private void OnTriggerEnter(Collider other)
    {
        ani.SetBool("Crush", true);
    }
}
