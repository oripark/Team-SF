using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pig_action : MonoBehaviour
{
    Animator ani;
    public Camera MainCamera;
    // Start is called before the first frame update
    void Start()
    {
        ani = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        if (ani.GetCurrentAnimatorStateInfo(0).IsName("GoToRest"))
        {
            ani.SetBool("touch_pig", false);
        }
        if (Input.GetMouseButton(0))
        {
            Ray ray = MainCamera.ScreenPointToRay(Input.mousePosition);
            rayCasting(ray);
        }
    }

    void rayCasting(Ray ray)
    {
        RaycastHit hit;
        if (Physics.Raycast(ray, out hit, Mathf.Infinity))
        {
            if (hit.transform.name.Equals("Pig"))
            {
                ani.SetBool("touch_pig", true);
            }
        }
    }
}
