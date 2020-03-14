//
//  NextViewController.swift
//  Swift5TableViewBasic
//
//  Created by MBP010 on 2020/03/14.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    var toDoString = String()
    @IBOutlet weak var todoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        todoLabel.text = toDoString
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = false
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
