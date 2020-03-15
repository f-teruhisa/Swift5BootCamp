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

    var addressString = ""
    @IBOutlet var longPress: UILongPressGestureRecognizer!
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

    @IBAction func longPressTap(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .began {
            // When begin to tap
            
        }else if sender.state == .ended{
            // Whem end to tap
            
            // Point the location tapped, and get latitude and longitude with MKMapView
            
            // Convert latitude and longitude into address
            
        }
        
       
    }
    
}

