//
//  ButtonRow.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 05/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

class ButtonRow: Row {
   
    override var cellType: CellType {
        return .Button
    }
    
    var action: ((_ row: ButtonRow) -> Void)?
    
    
    
}


class ButtonRowBuilder: RowBuilder<ButtonRow> {
    
    
    func setAction(action: @escaping (_ row: ButtonRow) -> Void) -> Self {
        row.action = action
        return self
    }
    
}
