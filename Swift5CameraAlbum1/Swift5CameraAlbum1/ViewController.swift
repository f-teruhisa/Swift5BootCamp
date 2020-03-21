//
//  ViewController.swift
//  Swift5CameraAlbum1
//
//  Created by MBP010 on 2020/03/21.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit
import Photos

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var backImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        PHPhotoLibrary.requestAuthorization{ (status) in
            switch(status) {
            case .authorized:
                print("許可されてます")
            case .denied:
                print("拒否されました")
            case .notDetermined:
                print("not determined")
            case .restricted:
                print("restrivted")
            }
        }
    }

    @IBAction func openCamera(_ sender: Any) {
        let sourceType = UIImagePickerController.SourceType.camera
        // カメラが利用可能かどうかをチェックする
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            // インスタンス変数を宣言
            let cameraPicker = UIImagePickerController()
            cameraPicker.sourceType = sourceType
            cameraPicker.delegate = self
            cameraPicker.allowsEditing = true
            present(cameraPicker, animated: true, completion: nil)
        }else{
            print("エラー")
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }

    @IBAction func openAlbum(_ sender: Any) {
        let sourceType = UIImagePickerController.SourceType.photoLibrary
        // カメラが利用可能かどうかをチェックする
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            // インスタンス変数を宣言
            let cameraPicker = UIImagePickerController()
            cameraPicker.sourceType = sourceType
            cameraPicker.delegate = self
            cameraPicker.allowsEditing = true
            present(cameraPicker, animated: true, completion: nil)
        }else{
            print("エラー")
        }
    }
    
}

