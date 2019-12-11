using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class LoadScene : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
       
    }
    
    public void MainScene()
    {
        SceneManager.LoadScene("Start");
    }

    public void HangulARScene()
    {
        SceneManager.LoadScene("Korean");
    }

    public void AnimalARScene()
    {
        SceneManager.LoadScene("Animal");
    }

}
