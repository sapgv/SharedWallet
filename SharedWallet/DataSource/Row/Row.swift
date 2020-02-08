//
//  Row.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 03/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

class Row {
    
    var name: String = ""
    var title: String = ""
    var cellType: CellType {
        .Title
    }
    var height: CGFloat = 44
    required init() {}
}

class RowBuilder<T: Row> {
    
    var row: T!
    
    init(_ type: T.Type) {
        row = T.init()
    }
    func setName(name: String) -> Self {
        row.name = name
        return self
    }
    
    func setTitle(title: String) -> Self {
        row.title = title
        return self
    }
    
    func setHeight(height: CGFloat) -> Self {
        row.height = height
        return self
    }
    
    func build() -> T {
        return row
    }
}


