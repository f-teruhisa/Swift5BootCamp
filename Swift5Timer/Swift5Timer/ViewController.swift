//
//  ViewController.swift
//  Swift5Timer
//
//  Created by MBP010 on 2020/02/29.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageVIew: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // stopButtonを押せなくする
        stopButton.isEnabled = true
    }
    
    
    @IBAction func start(_ sender: Any) {
        // imgaeViewのimageに画像を反映していく
        
        // startButonは押せなくなる
        startButton.isEnabled = true
    }
    
    
    @IBAction func stop(_ sender: Any) {
        // imgaeViewのimageに反映されている画像の流れを止める
        
        // startButonを押せるようにする
        startButton.isEnabled = false
    }
    
}

