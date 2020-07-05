//
//  ViewController.swift
//  Swift5GoogleAdmob1
//
//  Created by MBP010 on 2020/07/05.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    @IBOutlet weak var bannerView: GADBannerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        bannerView.adUnitID = ""
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
    }


}

