//
//  LoginFacebookView.swift
//  W1N
//
//  Created by Stefano Miceli on 12/04/17.
//  Copyright © 2017 µEffort. All rights reserved.
//

import UIKit
import FacebookLogin

class LoginFacebookView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    func caricaVista(){
        
        let loginButton = LoginButton(readPermissions: [.publicProfile])
        loginButton.center = self.center
        
        
        self.addSubview(loginButton)
        
        self.isHidden = false
      
        
        
    }
    

}
