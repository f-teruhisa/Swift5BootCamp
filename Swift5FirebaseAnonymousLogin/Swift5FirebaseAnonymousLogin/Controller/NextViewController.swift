//
//  NextViewController.swift
//  Swift5FirebaseAnonymousLogin
//
//  Created by MBP010 on 2020/07/12.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit

class NextViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var timeLineTableView: UITableView!
    @IBOutlet weak var cameraButton: UIButton!
    
    var selectedImage = UIImage()
    
    var userName = String()
    var userImageData = Data()
    var userImage = UIImage()
    var commentString = String()
    var contentImageString = String()
    var userProfileImageString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        timeLineTableView.delegate = self
        timeLineTableView.dataSource = self
        
        if UserDefaults.standard.object(forKey: "userName") != nil{
            userName = UserDefaults.standard.object(forKey: "userName") as! String
            
        }
        
        if UserDefaults.standard.object(forKey: "userImage") != nil{
            userImageData = UserDefaults.standard.object(forKey: "userImage") as! Data
            userImage = UIImage(data: userImageData)!
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
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
