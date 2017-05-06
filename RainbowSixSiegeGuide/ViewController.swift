//
//  ViewController.swift
//  RainbowSixSiegeGuide
//
//  Created by iosdev on 4/29/17.
//  Copyright © 2017 iosdev. All rights reserved.
//

import UIKit
import FBSDKShareKit
import FBSDKLoginKit
class ViewController: UIViewController ,FBSDKLoginButtonDelegate{


@IBOutlet weak var loginButton: FBSDKLoginButton!
    override func viewDidLoad() {
        let loginButton = FBSDKLoginButton()
        // Optional: Place the button in the center of your view.
        loginButton.center = view.center
        view.addSubview(loginButton)
        loginButton.readPermissions = ["public_profile", "email", "user_friends"]
    }

 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreate   asawdawdawdawd.
    }
    
   
        
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if (error != nil)
        
        {
            print(error.localizedDescription)
        }
    }
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("Goodbye")
    }

}

