//
//  NextViewController.swift
//  QuestionApp1
//
//  Created by MBP010 on 2020/03/20.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit

protocol NowScoreDeligate {
    func nowScore(score: Int)
}

class NextViewController: UIViewController {

    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var wrongLabel: UILabel!
    
    var deligate:NowScoreDeligate?
    
    
    var correctedCount = Int()
    var wrongCount = Int()
    
    var beforeCount = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        correctLabel.text = String(correctedCount)
        wrongLabel.text = String(wrongCount)
        
        if UserDefaults.standard.object(forKey: "beforeCount") != nil{
            beforeCount = UserDefaults.standard.object(forKey: "beforeCOunt") as! Int
        }
    }
    
    @IBAction func back(_ sender: Any) {
        // もし最高得点であれば、入れ替える
        if beforeCount < correctedCount{
            UserDefaults.standard.set(correctedCount, forKey: "beforeCount")
            deligate?.nowScore(score: correctedCount)
        }else if beforeCount > correctedCount {
         // 最高得点でない場合は、入れ替えない
            UserDefaults.standard.set(beforeCount, forKey: "beforeCount")
        }
        dismiss(animated: true, completion: nil)
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
