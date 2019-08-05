//
//  SettingTableViewCell.swift
//  Settings3
//
//  Created by Blake kvarfordt on 8/5/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var settingImage: UIImageView!
    @IBOutlet weak var settingLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    // MARK: - Properties
    var setting: Setting? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - Custom Methods
    
    func updateViews() {
        if let setting = setting {
            settingImage.image = setting.icon
            settingLabel.text = setting.name
            settingSwitch.isOn = setting.isOn
            backgroundColor = setting.isOn ? . lightGray : .white
        } else {
            
        }
    }

}
