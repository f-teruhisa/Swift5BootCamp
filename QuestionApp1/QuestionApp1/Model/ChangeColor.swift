//
//  ChangeColor.swift
//  QuestionApp1
//
//  Created by MBP010 on 2020/03/20.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import Foundation
import UIKit

class ChangeColor{
    func changeColor(topR:CGFloat, topG:CGFloat, topB:CGFloat, topAlpha: CGFloat, bottomR:CGFloat, bottomG:CGFloat, bottomB:CGFloat, bottomAlpha: CGFloat)-> CAGradientLayer{
        // グラデーションの開始色を決める
        let topColor = UIColor(red: topR, green: topG, blue: topB, alpha: topAlpha)
        
        // グラデーションの終了色を決める
        let bottomColor = UIColor(red: bottomR, green: bottomG, blue: bottomB, alpha: bottomAlpha)
        
        // グラデーションの色を配列で管理する
        let gradientColor = [topColor.cgColor, bottomColor.cgColor]
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColor
        
        return gradientLayer
    }
}
