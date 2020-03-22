//
//  ViewController.swift
//  Swift5Bokete1
//
//  Created by MBP010 on 2020/03/22.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import SDWebImage
import Photos

class ViewController: UIViewController {

    @IBOutlet weak var odaiImageView: UIImageView!
    @IBOutlet weak var commentTextView: UITextView!
    @IBOutlet weak var searchTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        commentTextView.layer.cornerRadius = 20.0
        
        PHPhotoLibrary.requestAuthorization{ (status) in
            switch(status){
            case .authorized: break
            case .denied: break
            case .notDetermined: break
            case .restricted: break
            }
        }
    }
    
    // 検索キーワードの値を元に画像を引っ張ってくる
    // pixabay.com


}

