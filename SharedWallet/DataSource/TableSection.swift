//
//  TableSection.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 03/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

struct TableSection {
    
    var name: String = String.uuid
    var headerDescription: String
    var headerHeight: CGFloat = UITableView.automaticDimension
    var footerDescription: String
    var footerHeight: CGFloat = UITableView.automaticDimension
    var rows: [Row]
    
    init(name: String = String.uuid, headerDescription: String = "", footerDescription: String = "", rows: [Row] = []) {
        self.name = name
        self.headerDescription = headerDescription
        self.footerDescription = footerDescription
        self.rows = rows
    }
    
    @discardableResult
    mutating func setName(_ name: String) -> Self {
        self.name = name
        return self
    }
    
    @discardableResult
    mutating func setHeaderDescription(_ headerDescription: String) -> Self {
        self.headerDescription = headerDescription
        return self
    }
    
    @discardableResult
    mutating func setHeaderHeight(_ height: CGFloat) -> Self {
        self.headerHeight = height
        return self
    }
    
    @discardableResult
    mutating func setFooterDescription(_ footerDescription: String) -> Self {
        self.footerDescription = footerDescription
        return self
    }
    
    @discardableResult
    mutating func setFooterHeight(_ height: CGFloat) -> Self {
        self.footerHeight = height
        return self
    }
    
    @discardableResult
    mutating func setRows(_ rows: [Row]) -> Self {
        self.rows = rows
        return self
    }
    
    
}
