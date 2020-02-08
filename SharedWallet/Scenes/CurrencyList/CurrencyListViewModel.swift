//
//  CurrencyListViewModel.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 05/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit
import RealmSwift

protocol CurrencyListViewModelInput {

    var sections: [TableSection] { get set }
}

class CurrencyListViewModel: CurrencyListViewModelInput {
    
    var realm: Realm!
    
    lazy var list: [Currency] = realm.objects(Currency.self).asArray
    
    lazy var sections: [TableSection] = [
    
            TableSectionBuilder()
                .setName("List")
                .setRows(
                    list.map({ currency in
                        RowBuilder(Row.self)
                            .setName(name: "Curr")
                            .setTitle(title: currency.name)
                            .build()
                        
                        
                    })
            
            )
                .build()
    ]
    
    
}
