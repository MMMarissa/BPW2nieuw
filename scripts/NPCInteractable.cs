using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class NPCInteractable : MonoBehaviour, IInteractable {

    [SerializeField] private string interactText;
  

    private void Awake()
    {
        
    }
    public void Interact() {

        //animator.SetTrigger("Talk");
        SceneManager.LoadScene(2);

  
    }

    public string GetInteractText() {
        return interactText;
    }

    public Transform GetTransform() {
        return transform;
    }

}