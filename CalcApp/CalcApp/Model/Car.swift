//
//  Car.swift
//  CalcApp
//
//  Created by MBP010 on 2020/03/01.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import Foundation

class Car{
    
    var frontWheel = 0
    var rearWheel = 0
    
    // initialize = 初期化
    init(){
        
        frontWheel = 2
        rearWheel = 2
        
    }
    
    // 機能
    func drive(){
        
        print("運転開始！！")
        print("前輪: \(frontWheel)")
        print("後輪: \(rearWheel)")
        
    }
}
