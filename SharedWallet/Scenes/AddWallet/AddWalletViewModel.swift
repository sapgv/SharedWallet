//
//  AddWalletViewModel.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 03/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import Foundation

class AddWalletViewModel {
    
    var navigator: AddWalletNavigatorInput!
    
    var sections: [TableSection] = [
    
        TableSectionBuilder()
            .setName("Name")
            .setRows([
                RowBuilder(Row.self)
                    .setName(name: "Name")
                    .setTitle(title: "Title")
                    .build(),
            ])
            .build(),
        TableSectionBuilder()
            .setName("Edit")
            .setRows([
                EditRowBuilder(EditRow.self)
                    .setName(name: "Edit row")
                    .setTitle(title: "Edit")
                    .setValue(value: "The value")
                    .build()
            ])
            .build(),
        
        TableSectionBuilder()
            .setName("Currency")
            .setRows([
                PickerRowBuilder(PickerRow<Currency>.self)
                    .setName(name: "Currency row")
                    .setTitle(title: "Currency")
                    .setObject(object: Currency.standart)
                    .setItems(items: Currency.currencies)
                    .build()
            ])
            .build()
        
        
    
    ]
    
}
