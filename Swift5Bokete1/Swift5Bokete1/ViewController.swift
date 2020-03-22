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
    
    var count = 0
    
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
        getImages(keyword: "funny")
    }
    
    // 検索キーワードの値を元に画像を引っ張ってくる
    // pixabay.com
    func getImages(keyword:String){
        // APIキー
        let url = "https://pixabay.com/api/?key=15691457-7ca44a1b818ed81f202e6c789&q=\(keyword)"
        
        // Alamofireを使って、HTTPリクエストを投げる
        AF.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default).responseJSON{ (response) in
            switch response.result{
                case .success:
                    let json:JSON = JSON(response.data as Any)
                    let imageString = json["hits"][self.count]["webformatURL"].string
                    self.odaiImageView.sd_setImage(with: URL(string: imageString!), completed: nil)
                
                case .failure(let error):
                    print(error)
            }
        }
        
        // レスポンスをJSON解析する
        
        // imageView.imageに貼り付ける
        
    }

    
    @IBAction func nextOdai(_ sender: Any) {
        count = count + 1
        // getImages(keyword: <#T##String#>)
    }
    
}

