//
//  ViewController.swift
//  W1N
//
//  Created by Stefano Miceli on 11/04/17.
//  Copyright © 2017 µEffort. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate, UITextFieldDelegate{

    @IBOutlet var Username: UITextField!
    
    @IBOutlet var Password: UITextField!
    
    @IBOutlet var Accesso: UIButton!
    
    @IBOutlet var UserPassword: UITextField!
    
    @IBOutlet var RegistrationLabel: UILabel!
    

    
    
    
    
    
    // Questa è la view di tipo FBSDKLoginButton che nella storyboard è un rettangolo colorato 
    @IBOutlet var FacebookLoginButton: FBSDKLoginButton!

    //Funzione del login di facebook
    public func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!)
    {
        
    }
    
    /**
     Sent to the delegate when the button was used to logout.
     - Parameter loginButton: The button that was clicked.
     */
    public func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!)
    {
        
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //Inserire la gestione del tap alla label di registrazione
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.registrazione))
        RegistrationLabel.isUserInteractionEnabled = true
        RegistrationLabel.addGestureRecognizer(tapGesture)
        Username.delegate = self
        Password.delegate = self
        UserPassword.delegate = self
   //     Username.keyboardType = UIKeyboardType.TIPODITASTIERA per aprire la tastiera come serve
    }
    
    
    // Questa è la funzione che permette di far chiudere la tastiera premendo invio, va accompagnata delegando alla vista gli oggetti che chiamano l'apertura della tastiera
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
    //Funzione chiamata quando viene cliccata la label di registrazione
    func registrazione(){
        self.performSegue(withIdentifier: "SegueLoginRegistration", sender: self)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func LoginAction(_ sender: UIButton) {
    
        
        self.performSegue(withIdentifier: "SegueLoginHome", sender: self)
        
    }
 


}

