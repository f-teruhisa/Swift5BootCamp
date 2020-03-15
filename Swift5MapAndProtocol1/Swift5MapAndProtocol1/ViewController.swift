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
    var locManager:CLLocationManager!
    
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
                        
            // Convert latitude and longitude into address
            let tapPoint = sender.location(in: view)
            // Point the location tapped, and get latitude and longitude with MKMapView
            let center = mapView.convert(tapPoint, toCoordinateFrom: mapView)
            let lat = center.latitude
            let log = center.longitude
            convert(lat: lat, log: log)
        }
    }
    
    func convert(lat:CLLocationDegrees, log:CLLocationDegrees){

        let geocoder = CLGeocoder()
        let location = CLLocation(latitude: lat, longitude: log)
        
        // CLoser
        geocoder.reverseGeocodeLocation(location) { (placeMark, error) in
            // when placeMark is not nil
            if let placeMark = placeMark{
                if let pm = placeMark.first{
                    if pm.administrativeArea != nil || pm.locality != nil {
                        self.addressString = pm.name! + pm.administrativeArea! + pm.locality!
                    }else{
                        self.addressString = pm.name!
                    }
                    
                    self.addressLabel.text = self.addressString
                }
            }
        }
    }
    
    @IBAction func goToSearchVC(_ sender: Any) {
        // Screen transition
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next"{
            let nextVC = segue.destination as! NextViewController
        }
    }
}

