////
//  ViewController.swift
//  RainbowSixSiegeGuide
//
//  Created by iosdev on 4/29/17.
//  Copyright © 2017 iosdev. All rights reserved.
//

import UIKit
import FBSDKShareKit
import FBSDKLoginKit
import SVProgressHUD
import PermissionScope
//import FacebookCore
//import FacebookLogin




class ViewController: UIViewController ,FBSDKLoginButtonDelegate{
let pscope = PermissionScope()
    
var fbLoginSuccess = false
    @IBOutlet weak var myButton: UIButton!
  

@IBOutlet weak var loginButton: FBSDKLoginButton!
    
    
    override func viewDidLoad() {
        let loginButton = FBSDKLoginButton()
        //loginButton.center = view.center;
        loginButton.center = view.center
        view.addSubview(loginButton)
        loginButton.delegate = self
        loginButton.readPermissions = ["public_profile", "email", "user_friends"]
       // PermissionScope
        pscope.addPermission(NotificationsPermission(notificationCategories: nil),
                             message: "Terima Kasih :)")
        pscope.show()
        
        if (FBSDKAccessToken.current() != nil)
        {
            performSegue(withIdentifier: "a", sender: self)
        }
        
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

