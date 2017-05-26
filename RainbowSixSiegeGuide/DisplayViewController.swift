//
//  DisplayViewController.swift
//  RainbowSixSiegeGuide
//
//  Created by iosdev on 5/6/17.
//  Copyright © 2017 iosdev. All rights reserved.
//

import UIKit
import SVProgressHUD

class DisplayViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{

   
    @IBOutlet weak var collectionView: UICollectionView!
    var menu = ["Army.jpg","Maps.jpg","r6.jpg","Reminder.jpg","About.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

    
        // Do any additional setup after loading the view.
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return menu.count
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! Cell
        cell.imageView?.image = UIImage(named :menu[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch(indexPath.row){
        case 0 :
            SVProgressHUD.show(withStatus: "Wait For it")
            performSegue(withIdentifier: "c", sender: self)
             SVProgressHUD.dismiss(withDelay: 1)
           
        case 1 :
            SVProgressHUD.show(withStatus: "Wait For it")
            performSegue(withIdentifier: "a", sender: self)
            SVProgressHUD.dismiss(withDelay: 1)
        case 2 :
            SVProgressHUD.show(withStatus: "Wait For it")
            performSegue(withIdentifier: "b", sender: self)
             SVProgressHUD.dismiss(withDelay: 1)
            
            
            
            
        default:
            break
        }
        
    }
    
}
