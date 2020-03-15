//
//  NextViewController.swift
//  Swift5MapAndProtocol1
//
//  Created by MBP010 on 2020/03/15.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit

protocol SearchLocationDeligate {
    func searchLocation(idoValue:String, keidoValue:String)
}

class NextViewController: UIViewController {
    
    @IBOutlet weak var idoTextField: UITextField!
    @IBOutlet weak var keidoTextField: UITextField!
    
    var deligate:SearchLocationDeligate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func okAction(_ sender: Any) {
        // Get texts in textFields
        let idoValue = idoTextField.text!
        let keidoValue = keidoTextField.text!
        
        // dismiss unless two textFIelds are not empty
        if idoTextField.text != nil && keidoTextField.text != nil{
            // set texts into args in deligate method
            deligate?.searchLocation(idoValue: idoValue, keidoValue: keidoValue)
            dismiss(animated: true, completion: nil)
        }
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
