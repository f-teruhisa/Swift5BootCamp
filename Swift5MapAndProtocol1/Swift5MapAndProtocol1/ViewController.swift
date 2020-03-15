//
//  ViewController.swift
//  Swift5MapAndProtocol1
//
//  Created by MBP010 on 2020/03/15.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, UIGestureRecognizerDelegate {

    @IBOutlet weak var settingButton: UIButton!
    
    @IBOutlet weak var mapView: MKMapView!
    var locManager:CLLocationManager
    
    @IBOutlet weak var addressLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        settingButton.backgroundColor = .white
        settingButton.layer.cornerRadius = 20.0
    }


}

