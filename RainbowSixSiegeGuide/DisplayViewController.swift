//
//  DisplayViewController.swift
//  RainbowSixSiegeGuide
//
//  Created by iosdev on 5/6/17.
//  Copyright © 2017 iosdev. All rights reserved.
//

import UIKit
import SVProgressHUD
import FBAudienceNetwork
import FBSDKShareKit
import FBSDKLoginKit
import AVFoundation

class DisplayViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,/*FBSDKLoginButtonDelegate,*/FBAdViewDelegate{

   //var audioplayer = AVAudioPlayer()
    @IBOutlet weak var collectionView: UICollectionView!
    var menu = ["Army.jpg","Maps.jpg","r6.jpg","Reminder.jpg","About.jpg","logout.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    let adview = FBAdView(placementID: "1017748905026896_1032649793536807", adSize: kFBAdSize320x50, rootViewController: self)
        adview.frame=CGRect(x: 31, y: 80, width:900, height: 70)
        adview.delegate = self
        adview.loadAd()
        view.addSubview(adview)
    
        // Do any additional setup after loading the view.
    }
    
    func adViewDidClick(_ adView: FBAdView) {
        print("ahai")
    }
    func adViewDidFinishHandlingClick(_ adView: FBAdView) {
        print("aa")
    }
    
    func adViewWillLogImpression(_ adView: FBAdView) {
        print("aaa")
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
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 1.0,height:2.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 2.0
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
        case 5 :
            let popup = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUpId") as! PopUpViewController
            self.addChildViewController(popup)
            popup.view.frame = self.view.frame
            self.view.addSubview(popup.view)
            popup.didMove(toParentViewController: self)
            
        default:
            break
        }
        
    }
    
}
