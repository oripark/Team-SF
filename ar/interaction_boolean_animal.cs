using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Vuforia;

public class interaction_boolean_animal : MonoBehaviour, ITrackableEventHandler
{
    protected TrackableBehaviour mTrackableBehaviour;
    protected TrackableBehaviour.Status m_PreviousStatus;
    protected TrackableBehaviour.Status m_NewStatus;

    public AudioClip clips;

    void Start()
    {

        mTrackableBehaviour = GetComponent<TrackableBehaviour>();
        if (mTrackableBehaviour)
            mTrackableBehaviour.RegisterTrackableEventHandler(this);
        try { 
            create_dict.animal_list.Add(mTrackableBehaviour.name, false);
        }
        catch (System.ArgumentException e)
        {
            return;
        }
    }

    void Update()
    {
        
    }

    void OnDestroy()
    {
        if (mTrackableBehaviour)
            mTrackableBehaviour.UnregisterTrackableEventHandler(this);
    }

    public void OnTrackableStateChanged(
        TrackableBehaviour.Status previousStatus,
        TrackableBehaviour.Status newStatus)
    {
        m_PreviousStatus = previousStatus;
        m_NewStatus = newStatus;

        if (newStatus == TrackableBehaviour.Status.DETECTED ||
            newStatus == TrackableBehaviour.Status.TRACKED ||
            newStatus == TrackableBehaviour.Status.EXTENDED_TRACKED)
        {
            Debug.Log("Trackable " + mTrackableBehaviour.TrackableName + " found");
            OnTrackingFound();
        }
        else if (previousStatus == TrackableBehaviour.Status.TRACKED &&
                 newStatus == TrackableBehaviour.Status.NO_POSE)
        {
            Debug.Log("Trackable " + mTrackableBehaviour.TrackableName + " lost");
            OnTrackingLost();
        }
        else
        {
            OnTrackingLost();
        }
    }

    void OnTrackingFound()
    {
        create_dict.animal_list[mTrackableBehaviour.name] = true;
        GameObject.Find(mTrackableBehaviour.name.Replace("_target","")).GetComponent<AudioSource>().clip = clips;
        GameObject.Find(mTrackableBehaviour.name.Replace("_target","")).GetComponent<AudioSource>().Play();
    }


    void OnTrackingLost()
    {
        create_dict.animal_list[mTrackableBehaviour.name] = false;
    }
}
