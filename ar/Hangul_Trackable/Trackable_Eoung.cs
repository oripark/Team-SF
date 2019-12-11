using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Vuforia;

public class Trackable_Eoung : MonoBehaviour, ITrackableEventHandler
{
    protected TrackableBehaviour mTrackableBehaviour;
    protected TrackableBehaviour.Status m_PreviousStatus;
    protected TrackableBehaviour.Status m_NewStatus;

    public Eoung_Interaction e_script;

    // Start is called before the first frame update


    void Start()
    {
        mTrackableBehaviour = GetComponent<TrackableBehaviour>();
        if (mTrackableBehaviour)
            mTrackableBehaviour.RegisterTrackableEventHandler(this);
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
            OnTrackingFound();
        }
        else if (previousStatus == TrackableBehaviour.Status.TRACKED &&
                 newStatus == TrackableBehaviour.Status.NO_POSE)
        {
            OnTrackingLost();
        }
        else
        {
            OnTrackingLost();
        }
    }

    protected virtual void OnTrackingFound()
    {
        e_script = GetComponent<Eoung_Interaction>();
        e_script.enabled = true;
    }


    protected virtual void OnTrackingLost()
    {

        e_script = GetComponent<Eoung_Interaction>();
        e_script.enabled = false;
    }
}
