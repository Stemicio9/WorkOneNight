//
//  ViewController.swift
//  W1N
//
//  Created by Stefano Miceli on 11/04/17.
//  Copyright © 2017 µEffort. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate{

    @IBOutlet var Username: UITextField!
    
    @IBOutlet var Password: UITextField!
    
    @IBOutlet var Accesso: UIButton!
    
    @IBOutlet var UserPassword: UITextField!
    
    @IBOutlet var RegistrationLabel: UILabel!
    

    
    @IBOutlet var FacebookLoginButton: FBSDKLoginButton!

   
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

      
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func LoginAction(_ sender: UIButton) {
    
        
        self.performSegue(withIdentifier: "SegueLoginHome", sender: self)
        
    }
 


}

