using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hangul_Col : MonoBehaviour
{
    public GameObject C;

    public GameObject particle;

    public List<GameObject> cv_lt = new List<GameObject>();
    public List<GameObject> v_lt = new List<GameObject>();



    // Start is called before the first frame update
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        for (int i=0; i<10; i++) { 
            if (other.name.Equals(v_lt[i].name))
            {
                cv_lt[i].transform.position = other.transform.position;
                Destroy(Instantiate(particle, cv_lt[i].transform.position, Quaternion.identity), 10 * Time.deltaTime);
                cv_lt[i].transform.parent = C.transform.parent.transform;
                cv_lt[i].SetActive(true);

                C.SetActive(false);
                v_lt[i].SetActive(false);
            }
        }
    }
}
