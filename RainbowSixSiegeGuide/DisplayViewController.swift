//
//  DisplayViewController.swift
//  RainbowSixSiegeGuide
//
//  Created by iosdev on 5/6/17.
//  Copyright © 2017 iosdev. All rights reserved.
//

import UIKit

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
        case 1 :
            performSegue(withIdentifier: "a", sender: self)
        case 2 :
            performSegue(withIdentifier: "b", sender: self)
            
            
        default:
            break
        }
        
    }
    
}
