using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Giraffe_River_Tree_Interaction : MonoBehaviour
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
        if (ani.GetBool("Crush_River"))
        {
            GameObject.Find("Giraffe").transform.position = Vector3.MoveTowards(GameObject.Find("Giraffe").transform.position, GameObject.Find("River").transform.position, 0);
        }

        if (ani.GetBool("Crush_Tree"))
        {
            GameObject.Find("Giraffe").transform.position = Vector3.MoveTowards(GameObject.Find("Giraffe").transform.position, GameObject.Find("Tree").transform.position, 0);
        }

        if (create_dict.animal_list["Giraffe_target"] && create_dict.animal_list["River_target"])
        {
            ani.SetBool("Interaction_River", true);

            if (ani.GetCurrentAnimatorStateInfo(0).IsName("Walk"))
            {
                GameObject.Find("Giraffe").transform.LookAt(GameObject.Find("River").transform.position);
                GameObject.Find("Giraffe").transform.position = Vector3.MoveTowards(GameObject.Find("Giraffe").transform.position, GameObject.Find("River").transform.position, 0.3f * Time.deltaTime);
            }
        }

        else if (create_dict.animal_list["Giraffe_target"] && create_dict.animal_list["Tree_target"])
        {
            ani.SetBool("Interaction_Tree", true);

            if (ani.GetCurrentAnimatorStateInfo(0).IsName("Walk 0"))
            {
                GameObject.Find("Giraffe").transform.LookAt(GameObject.Find("Tree").transform.position);
                GameObject.Find("Giraffe").transform.position = Vector3.MoveTowards(GameObject.Find("Giraffe").transform.position, GameObject.Find("Tree").transform.position, 0.3f * Time.deltaTime);
            }
        }
        else
        {
            if (!ani.GetBool("Interaction_River"))
            {
                ani.SetBool("Crush_River", false);
            }

            if (!ani.GetBool("Interaction_Tree"))
            {
                ani.SetBool("Crush_Tree", false);
            }

            if (((int)GameObject.Find("GT_pos").transform.position.x == (int)GameObject.Find("Giraffe").transform.position.x) && ((int)GameObject.Find("GT_pos").transform.position.z == (int)GameObject.Find("Giraffe").transform.position.z))
            {
                ani.SetBool("Interaction_River", false);
                ani.SetBool("Interaction_Tree", false);

                transform.position = transform.parent.position;
                transform.rotation = transform.parent.rotation;
            }
            else
            {
                ani.SetBool("Crush_River", false);
                ani.SetBool("Crush_Tree", false);

                if (ani.GetCurrentAnimatorStateInfo(0).IsName("Walk") || ani.GetCurrentAnimatorStateInfo(0).IsName("Walk 0"))
                {
                    GameObject.Find("Giraffe").transform.LookAt(GameObject.Find("Giraffe_target").transform.position);
                    GameObject.Find("Giraffe").transform.position = Vector3.MoveTowards(GameObject.Find("Giraffe").transform.position, GameObject.Find("Giraffe_target").transform.position, Time.deltaTime);
                }
            }
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.transform.name.Equals("River"))
            ani.SetBool("Crush_River", true);

        if (collision.transform.name.Equals("Tree"))
            ani.SetBool("Crush_Tree", true);
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.transform.name.Equals("River"))
            ani.SetBool("Crush_River", true);

        if (other.transform.name.Equals("Tree"))
            ani.SetBool("Crush_Tree", true);
    }
}
