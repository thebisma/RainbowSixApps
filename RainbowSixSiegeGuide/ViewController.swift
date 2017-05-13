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
import FacebookCore
import FacebookLogin




class ViewController: UIViewController ,FBSDKLoginButtonDelegate{

var fbLoginSuccess = false
    @IBOutlet weak var myButton: UIButton!
  
    @IBAction func myButton(_ sender: UIButton) {
        performSegue(withIdentifier: "a", sender: nil)
    }
@IBOutlet weak var loginButton: FBSDKLoginButton!
    override func viewDidLoad() {
        let loginButton = FBSDKLoginButton()
        //loginButton.center = view.center;
        loginButton.center = view.center
        view.addSubview(loginButton)
        loginButton.readPermissions = ["public_profile", "email", "user_friends"]
       // let accessToken = AccessToken.current
       
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreate   asawdawdawdawd.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if (FBSDKAccessToken.current() != nil && fbLoginSuccess == true )
        {
            performSegue(withIdentifier: "a", sender: self)
        }
    }
        
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if (error != nil)
        
        {
            print(error.localizedDescription)
            fbLoginSuccess = true
        }
      
        else
        {
        fbLoginSuccess = true
        
        }
        
    }
        
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("Goodbye")
    }

}

