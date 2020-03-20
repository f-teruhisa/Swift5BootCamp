//
//  Human.swift
//  QuestionApp1
//
//  Created by MBP010 on 2020/03/20.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import Foundation

class Human:Animal{
    override func breath() {
        super.breath()
        profile()
    }
    
    func profile(){
        print("私はTeruhias Fukumotoです")
    }
}
