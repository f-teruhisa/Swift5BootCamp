//
//  ViewController.swift
//  Siwft5Senni
//
//  Created by MBP010 on 2020/03/07.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func plus(_ sender: Any) {
        count = count + 1
        
        label.text = String(count)
        
        if count == 10 {
            // 画面遷移をする
            performSegue(withIdentifier: "next", sender: nil)
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.count2 = count
    }
    

}

