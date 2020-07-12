//
//  InputViewController.swift
//  Swift5FirebaseAnonymousLogin
//
//  Created by MBP010 on 2020/07/12.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit

class InputViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var userTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        logoImageView.layer.cornerRadius = 30.0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
    @IBAction func done(_ sender: Any) {
        // ユーザー名をアプリ内に保存
        UserDefaults.standard.set(userTextField.text, forKey: "userName")
        
        // アイコンをアプリ内に保存
        let data = logoImageView.image?.jpegData(compressionQuality: 0.1)
        UserDefaults.standard.set(data, forKey: "userImage")
    
        // 画面遷移
        let nextVC = self.storyboard?.instantiateViewController(identifier: "nextVC") as! NextViewController

        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        userTextField.resignFirstResponder()
    }
    
    @IBAction func imageViewTap(_ sender: Any) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
        
        // アラートを出す
        
        // カメラorアルバムを選択させる
        
        
    }
    
    // カメラを立ち上げるメソッド
    func doCamera(){
        let sourceType:UIImagePickerController.SourceType = .camera
        
        // カメラを利用可能かをチェックする
        if UIImagePickerController.isSourceTypeAvailable(.camera){

            let cameraPicker = UIImagePickerController()
            cameraPicker.allowsEditing = true
            cameraPicker.sourceType = sourceType
            cameraPicker.delegate = self
            
            self.present(cameraPicker, animated: true, completion: nil)
        }
    }
    
    // フォトライブラリを立ち上げるメソッド
    func doAlbum(){
        let sourceType:UIImagePickerController.SourceType = .photoLibrary
        
        // カメラを利用可能かをチェックする
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){

            let cameraPicker = UIImagePickerController()
            cameraPicker.allowsEditing = true
            cameraPicker.sourceType = sourceType
            cameraPicker.delegate = self
            
            self.present(cameraPicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if info[.originalImage] as? UIImage != nil{
            let selectedImage = info[.originalImage] as! UIImage
            UserDefaults.standard.set(selectedImage.jpegData(compressionQuality: 0.1), forKey: "userImage")
            
            logoImageView.image = selectedImage
            picker.dismiss(animated: true, completion: nil)
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    // アラート
    
    func showAlert(){
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
