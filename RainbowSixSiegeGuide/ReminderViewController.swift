//
//  ReminderViewController.swift
//  RainbowSixSiegeGuide
//
//  Created by bisma on 6/9/17.
//  Copyright © 2017 iosdev. All rights reserved.
//

import UIKit
var reminder    = [""]
//var dateArray   = [""]
class ReminderViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet weak var reminderTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminder.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mycell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        mycell.textLabel?.text = reminder[indexPath.row]
        //mycell.textLabel?.text =
            //dateArray[indexPath.row]
        return mycell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            reminder.remove(at: indexPath.row)
            reminderTableView.reloadData()
        }
    }


}
	
