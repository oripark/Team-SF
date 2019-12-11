using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Dinosaur_action : MonoBehaviour
{
    public AudioClip clips;
    AudioSource audio;

    Animator ani;
    public Camera MainCamera;
    // Start is called before the first frame update
    void Start()
    {
        audio = GetComponent<AudioSource>();
        ani = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        if (ani.GetCurrentAnimatorStateInfo(0).IsName("End Sleeping"))
        {
            audio.clip = clips;
            audio.Play();
        }
        if (ani.GetCurrentAnimatorStateInfo(0).IsName("Start Sleeping"))
        {
            ani.SetBool("touch_dinosaur", false);
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
            if (hit.transform.name.Equals("Dinosaur"))
            {
                ani.SetBool("touch_dinosaur", true);
                audio.Pause();
            }
        }
    }
}
