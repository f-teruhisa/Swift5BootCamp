//
//  ViewController.swift
//  Swift5Keyboard1
//
//  Created by MBP010 on 2020/03/07.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var logoImageVIew: UIImageView!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        userNameTextField.delegate = self
        passWordTextField.delegate = self
    }

    @IBAction func login(_ sender: Any) {
        
        logoImageVIew.image = UIImage(named: "loginOK")
        
        // 文字を変更する
        userNameLabel.text = userNameTextField.text
        passwordLabel.text = passWordTextField.text
    }
    
    // タッチしてキーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // returnキーを押したとき呼ばれる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // キーボードが閉じる
        textField.resignFirstResponder()
        return true
    }
}

