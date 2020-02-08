//
//  UITableView+ext.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 04/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

enum CellType: String {
    case Default = "DefaultCell"
    case Title = "TitleCell"
    case Subtitle = "SubtitleCell"
    case Edit = "EditCell"
    case TitleEdit = "TitleEditCell"
    case Button = "ButtonCell"
    case RightDetail = "RightDetailCell"
    case Picker = "PickerCell"
}

extension UITableView {
    
    func identifier(row: Row) -> String {
        return row.cellType.rawValue
    }
    
    func register(cellTypes: [CellType]) {
        for type in cellTypes {
            self.register(cellType: type)
        }
    }
    
    func register(cellType: CellType, identifier: String = "") {
        self.register(UINib(nibName: cellType.rawValue, bundle: nil), forCellReuseIdentifier: identifier.isEmpty ? cellType.rawValue : identifier)
    }
    
    func register(cellType: UITableViewCell.Type, identifier: String) {
        self.register(cellType, forCellReuseIdentifier: identifier)
    }
    
    func deque(row: Row, indexPath: IndexPath) -> UITableViewCell {
        return self.dequeueReusableCell(withIdentifier: identifier(row: row), for: indexPath)
    }
    
}
