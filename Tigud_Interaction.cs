using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tigud_Interaction : MonoBehaviour
{
    public GameObject pre_pos;

    public GameObject C;

    public List<GameObject> v_lt = new List<GameObject>();
    public List<GameObject> cv_lt = new List<GameObject>();

    //private List<string> lt = new List<string>(new string[]{ "A_target", "Ya_target", "Eo_target", "Yeo_target", "O_target", "Yo_target", "Wu_target", "Yu_target", "Ew_target", "Ee_target" });
    float speed = 2.0f;
    bool crush = false;
    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        if (create_dict.hangul_list["Tigud_target"] && create_dict.hangul_list["A_target"])
        {
            C.transform.position = Vector3.MoveTowards(C.transform.position, v_lt[0].transform.position, speed * Time.deltaTime);
            v_lt[0].transform.position = Vector3.MoveTowards(v_lt[0].transform.position, C.transform.position, speed * Time.deltaTime);
        }
        else if (create_dict.hangul_list["Tigud_target"] && create_dict.hangul_list["Ya_target"])
        {
            C.transform.position = Vector3.MoveTowards(C.transform.position, v_lt[1].transform.position, speed * Time.deltaTime);
            v_lt[1].transform.position = Vector3.MoveTowards(v_lt[1].transform.position, C.transform.position, speed * Time.deltaTime);
        }
        else if (create_dict.hangul_list["Tigud_target"] && create_dict.hangul_list["Eo_target"])
        {
            C.transform.position = Vector3.MoveTowards(C.transform.position, v_lt[2].transform.position, speed * Time.deltaTime);
            v_lt[2].transform.position = Vector3.MoveTowards(v_lt[2].transform.position, C.transform.position, speed * Time.deltaTime);
        }
        else if (create_dict.hangul_list["Tigud_target"] && create_dict.hangul_list["Yeo_target"])
        {
            C.transform.position = Vector3.MoveTowards(C.transform.position, v_lt[3].transform.position, speed * Time.deltaTime);
            v_lt[3].transform.position = Vector3.MoveTowards(v_lt[3].transform.position, C.transform.position, speed * Time.deltaTime);
        }
        else if (create_dict.hangul_list["Tigud_target"] && create_dict.hangul_list["O_target"])
        {
            C.transform.position = Vector3.MoveTowards(C.transform.position, v_lt[4].transform.position, speed * Time.deltaTime);
            v_lt[4].transform.position = Vector3.MoveTowards(v_lt[4].transform.position, C.transform.position, speed * Time.deltaTime);
        }
        else if (create_dict.hangul_list["Tigud_target"] && create_dict.hangul_list["Yo_target"])
        {
            C.transform.position = Vector3.MoveTowards(C.transform.position, v_lt[5].transform.position, speed * Time.deltaTime);
            v_lt[5].transform.position = Vector3.MoveTowards(v_lt[5].transform.position, C.transform.position, speed * Time.deltaTime);
        }
        else if (create_dict.hangul_list["Tigud_target"] && create_dict.hangul_list["Wu_target"])
        {
            C.transform.position = Vector3.MoveTowards(C.transform.position, v_lt[6].transform.position, speed * Time.deltaTime);
            v_lt[6].transform.position = Vector3.MoveTowards(v_lt[6].transform.position, C.transform.position, speed * Time.deltaTime);
        }
        else if (create_dict.hangul_list["Tigud_target"] && create_dict.hangul_list["Yu_target"])
        {
            C.transform.position = Vector3.MoveTowards(C.transform.position, v_lt[7].transform.position, speed * Time.deltaTime);
            v_lt[7].transform.position = Vector3.MoveTowards(v_lt[7].transform.position, C.transform.position, speed * Time.deltaTime);
        }
        else if (create_dict.hangul_list["Tigud_target"] && create_dict.hangul_list["Ew_target"])
        {
            C.transform.position = Vector3.MoveTowards(C.transform.position, v_lt[8].transform.position, speed * Time.deltaTime);
            v_lt[8].transform.position = Vector3.MoveTowards(v_lt[8].transform.position, C.transform.position, speed * Time.deltaTime);
        }
        else if (create_dict.hangul_list["Tigud_target"] && create_dict.hangul_list["Ee_target"])
        {
            C.transform.position = Vector3.MoveTowards(C.transform.position, v_lt[9].transform.position, speed * Time.deltaTime);
            v_lt[9].transform.position = Vector3.MoveTowards(v_lt[9].transform.position, C.transform.position, speed * Time.deltaTime);
        }
        else
        {
            C.SetActive(true);
            C.transform.position = Vector3.MoveTowards(C.transform.position, C.transform.parent.position, speed * Time.deltaTime);

            BackToCV(cv_lt);
            BacktoV(v_lt);
        }
    }

    public void BackToCV(List<GameObject> lt)
    {
        foreach (GameObject obj in lt)
        {
            obj.SetActive(false);
            obj.transform.position = pre_pos.transform.position;
            obj.transform.parent = pre_pos.transform;
        }
    }

    public void BacktoV(List<GameObject> lt)
    {
        foreach (GameObject obj in lt)
        {
            obj.SetActive(true);
            obj.transform.position = Vector3.MoveTowards(obj.transform.position, obj.transform.parent.position, speed * Time.deltaTime);
        }
    }
}
