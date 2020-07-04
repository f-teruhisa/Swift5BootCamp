//
//  ViewController.swift
//  Swift5FacebookLoginWithFirebase1
//
//  Created by MBP010 on 2020/06/28.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import FacebookCore
import FacebookLogin
import Firebase

class ViewController: UIViewController,LoginButtonDelegate {
    
    let fbLoginButton:FBLoginButton = FBLoginButton()
    var displayNmae = String()
    var pictureURL = String()
    var pictureURLString = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fbLoginButton.delegete = self
    }


}

