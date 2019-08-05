//
//  SettingController.swift
//  Settings3
//
//  Created by Blake kvarfordt on 8/5/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import Foundation
import UIKit.UIImage

class SettingController {
    
    static let shared = SettingController()
    
    var setting = [Setting]()
    
    init() {
        
        let apps = Setting(name: "Apps", icon: UIImage(named: "apps"), isOn: false)
        let books = Setting(name:  "Books", icon: UIImage(named: "books"), isOn: false)
        let music = Setting(name: "Music", icon: UIImage(named: "music"), isOn: false)
        
        setting = [apps, books, music]
        
    }
    
    
}
