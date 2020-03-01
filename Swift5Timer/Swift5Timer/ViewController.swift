//
//  ViewController.swift
//  Swift5Timer
//
//  Created by MBP010 on 2020/02/29.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var timer = Timer()
    var count = Int()
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        count = 0
        // stopButtonを押せなくする
        stopButton.isEnabled = false
        
        for i in 0..<5{
            let image = UIImage(named: "\(i)")
            imageArray.append(image!)
        }
        
    }
    
    func startTimer(){
        // タイマーを回す(0.2秒ごと)
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }
    
    
    @objc func timerUpdate(){
      // 0.2秒ごとに呼ばれる
        count = count + 1
        
        if count > 4 {
            count = 0
        }
        
        imageView.image = imageArray[count]
    }
    
    
    @IBAction func start(_ sender: Any) {
        // imgaeViewのimageに画像を反映していく
        startTimer()
        
        // startButonは押せなくなる
        startButton.isEnabled = false
        // stopButtonは押せるようにする
        stopButton.isEnabled = true
        
    }
    
    
    @IBAction func stop(_ sender: Any) {
        // imgaeViewのimageに反映されている画像の流れを止める
        
        // startButonを押せるようにする
        startButton.isEnabled = true
        // stopButtonは押せなくなる
        stopButton.isEnabled = false
        
        // タイマーを止める
        timer.invalidate()
    }
    
}

