//
//  SettingTableViewController.swift
//  Settings3
//
//  Created by Blake kvarfordt on 8/5/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SettingController.shared.setting.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell() }

        let setting = SettingController.shared.setting[indexPath.row]
        
        cell.setting = setting
        cell.delegate = self
        return cell
    }

}

extension SettingTableViewController: SettingTableViewCellDelegate {
    func cellSettingSwitchedValueChanged(cell: SettingTableViewCell, isOn: Bool) {
        guard let setting = cell.setting, let indexPath = tableView.indexPath(for: cell) else { return }
    
        SettingController.shared.setIsOn(for: setting, isOn: isOn)
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}
