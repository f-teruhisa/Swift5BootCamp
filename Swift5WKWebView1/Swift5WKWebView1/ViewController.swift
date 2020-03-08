//
//  ViewController.swift
//  Swift5WKWebView1
//
//  Created by MBP010 on 2020/03/08.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
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
        webView.navigationDelegate = self
        let url = URL(string: "https://www.yahoo.co.jp/")
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
    // ロードが開始されたとき
    func webView(_ <#T##webView: WKWebView##WKWebView#>, didCommit: <#T##WKNavigation!#>) {
        print("読み込み開始")
        indicator.startAnimating()
    }
    
    // ロードが完了したとき
    func webView(_ <#T##webView: WKWebView##WKWebView#>, didFinish: <#T##WKNavigation!#>) {
        print("ロード完了")
        indicator.stopAnimating()
    }

    @IBAction func go(_ sender: Any) {
        webView.goForward()
    }
    
    @IBAction func back(_ sender: Any) {
        webView.goBack()
    }
    
}

