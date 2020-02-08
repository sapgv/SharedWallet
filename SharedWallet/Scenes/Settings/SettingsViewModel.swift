//
//  SettingsViewModel.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 05/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import Foundation

protocol SettingsViewModelInput {
    
    var sections: [TableSection] { get set }
}

class SettingsViewModel: SettingsViewModelInput {
    
    var navigator: SettingsNavigatorInput!
    
    lazy var sections: [TableSection] = [
        TableSectionBuilder()
            .setName("Currency")
            .setRows([
                ButtonRowBuilder(ButtonRow.self)
                    .setAction(action: { [weak self] row in
                        print(row)
                        self?.navigator.toCurrencyList()
                    })
                    .build()
                    
            ])
            .build()
    
    
    ]
    
    
}
