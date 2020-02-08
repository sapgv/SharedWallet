//
//  EditRow.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 04/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

class EditRow: Row {
    
    override var cellType: CellType {
        return .Edit
    }
    
    var placeholder: String = ""
    var value: String = ""
    
}

class EditRowBuilder<T: EditRow>: RowBuilder<EditRow> {
    
    func setPlaceholder(placholder: String) -> Self {
        row.placeholder = placholder
        return self
    }
    
    func setValue(value: String) -> Self {
        row.value = value
        return self
    }
    
}
