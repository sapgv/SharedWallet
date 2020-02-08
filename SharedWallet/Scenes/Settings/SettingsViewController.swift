//
//  SettingsViewController.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 05/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {
    
    var viewModel: SettingsViewModelInput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(cellTypes: [.Button])
    }
    
    deinit {
        print("deinit \(type(of: self))")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.sections[section].rows.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = viewModel.sections[indexPath.section].rows[indexPath.row]
        
        let cell = tableView.deque(row: row, indexPath: indexPath)
        
        if let cell = cell as? ButtonCell, let row = row as? ButtonRow {
            cell.setup(for: row)
        }
        
        return cell
    }
}
