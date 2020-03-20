//
//  imagesModel.swift
//  QuestionApp1
//
//  Created by MBP010 on 2020/03/20.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import Foundation

class ImagesModel{
    // 画像名を取得して、その画像名が人間かそうでないかをフラグによって判定する機能
    let imageText:String
    let answer:Bool
    
    init(imageName:String, correctOrNot:Bool){
        imageText = imageName
        answer = correctOrNot
    }
}
