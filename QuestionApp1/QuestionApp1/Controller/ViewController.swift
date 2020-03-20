//
//  ViewController.swift
//  QuestionApp1
//
//  Created by MBP010 on 2020/03/20.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageVIew: UIImageView!
    @IBOutlet weak var maxScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func answer(_ sender: Any) {
        if (sender as AnyObject).tag == 1{
            // ○ボタンが押されたとき
            
            // ユーザーが押したボタンが○ボタンだった
            
            // ○ボタンの音声を流す
            
        }else if (sender as AnyObject).tag == 2{
            // ✗ボタンが押されたとき
            
            // ユーザーが押したボタンが✗ボタンだった
            
            // ✗ボタンの音声を流す
            
        }
    }
    
}

