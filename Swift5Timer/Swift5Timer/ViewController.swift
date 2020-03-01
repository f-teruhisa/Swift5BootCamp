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
    
    var timer = Timer()
    var count = Int()
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        count = 0
        // stopButtonを押せなくする
        stopButton.isEnabled = true
        
        // Property
    }
    
    func startTimer(){
        // タイマーを回す(0.2秒ごと)
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }
    
    
    @objc func timerUpdate(){
      // 0.2秒ごとに呼ばれる
        count = count + 1
        imageView.image = imageArray[count]
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

