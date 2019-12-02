//
//  Currency.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 03/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import Realm
import RealmSwift

class Currency: Object {
    
    @objc dynamic var name: String = ""
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
    
    override class func primaryKey() -> String? {
        return "name"
    }
    
    static var currencies: [Currency] {
        return [
            Currency(name: "RUB"),
            Currency(name: "USD"),
            ]
    }
    
    static var standart: Currency! {
        return currencies.first
    }
    
}
