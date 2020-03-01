//
//  ViewController.swift
//  CalcApp
//
//  Created by MBP010 on 2020/03/01.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var carModel = Car()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //carModel.frontWheel = 10
        //carModel.rearWheel = 10
    }

    @IBAction func doAction(_ sender: Any) {
        
        carModel.drive()
    }
    
}

