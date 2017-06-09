//
//  AddViewController.swift
//  RainbowSixSiegeGuide
//
//  Created by bisma on 6/9/17.
//  Copyright © 2017 iosdev. All rights reserved.
//

import UIKit
import TextFieldEffects
class AddViewController: UIViewController {

    
    @IBOutlet weak var insertText: UITextField!
    

       @IBAction func addButton(_ sender: Any) {
            reminder.append(insertText.text!)
            insertText.text = ""

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
