//
//  ViewController.swift
//  Swift5WKWebView1
//
//  Created by MBP010 on 2020/03/08.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    var webView = WKWebView()

    @IBOutlet weak var toolBar: UIToolbar!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 実態になっている
        
        // 大きさ
        webView.frame = CGRect(x: 0, y: toolBar.frame.size.height, width: view.frame.size.width, height: view.frame.size.height - toolBar.frame.size.height*2)
        view.addSubview(webView)
        
        // 何をロードするのか
        
        // どこにつけるのか
        
        
    }

    @IBAction func go(_ sender: Any) {
    }
    
    @IBAction func back(_ sender: Any) {
    }
    
}

