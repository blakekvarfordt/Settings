//
//  Setting.swift
//  Settings3
//
//  Created by Blake kvarfordt on 8/5/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import UIKit

class Setting {
    
    let name: String
    let icon: UIImage?
    let isOn: Bool
    
    init(name: String, icon: UIImage?, isOn: Bool) {
        self.name = name
        self.icon = icon
        self.isOn = isOn
    }
    
}
