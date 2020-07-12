//
//  Contents.swift
//  Swift5FirebaseAnonymousLogin
//
//  Created by MBP010 on 2020/07/12.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import Foundation

class Contents{
    var userNameString:String = ""
    var profileImageString:String = ""
    var contentImageString:String = ""
    var commentString:String = ""
    var postDateString:String = ""
    
    init(userNameString:String, profileImageString:String, contentImageString:String, commentString:String, postDateString:String){
        self.userNameString = userNameString
        self.profileImageString = profileImageString
        self.contentImageString = contentImageString
        self.commentString = commentString
        self.postDateString = postDateString
    }
}
