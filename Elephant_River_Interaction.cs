using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Elephant_River_Interaction : MonoBehaviour
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
            GameObject.Find("Elephant").transform.position = Vector3.MoveTowards(GameObject.Find("Elephant").transform.position, GameObject.Find("River").transform.position, 0);
        }

        if (create_dict.animal_list["Elephant_target"] && create_dict.animal_list["River_target"])
        {
            ani.SetBool("Interaction", true);

            if (ani.GetCurrentAnimatorStateInfo(0).IsName("Walk"))
            {
                GameObject.Find("Elephant").transform.LookAt(GameObject.Find("River").transform.position);
                GameObject.Find("Elephant").transform.position = Vector3.MoveTowards(GameObject.Find("Elephant").transform.position, GameObject.Find("River").transform.position, 0.3f * Time.deltaTime);
            }
        }
        else
        {
            ani.SetBool("Crush", false);

            if (((int)GameObject.Find("ET_pos").transform.position.x == (int)GameObject.Find("Elephant").transform.position.x) && ((int)GameObject.Find("ET_pos").transform.position.z == (int)GameObject.Find("Elephant").transform.position.z))
            {
                ani.SetBool("Interaction", false);
                transform.position = transform.parent.position;
                transform.rotation = transform.parent.rotation;
            }
            else
            {
                ani.SetBool("Crush", false);
                if (ani.GetCurrentAnimatorStateInfo(0).IsName("Walk"))
                {
                    GameObject.Find("Elephant").transform.LookAt(GameObject.Find("Elephant_target").transform.position);
                    GameObject.Find("Elephant").transform.position = Vector3.MoveTowards(GameObject.Find("Elephant").transform.position, GameObject.Find("Elephant_target").transform.position, Time.deltaTime);
                }
            }
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        ani.SetBool("Crush", true);
    }

}
