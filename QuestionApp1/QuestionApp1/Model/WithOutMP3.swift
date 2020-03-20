//
//  WithOutMP3.swift
//  QuestionApp1
//
//  Created by MBP010 on 2020/03/20.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import Foundation

class WithOutMP3:SoundFile{
    override func playSound(fileName: String, extensionName: String) {
        if extensionName == "mp3" {
            print("このファイルは再生できません。")
        }
        
        player?.stop()
    }
}
