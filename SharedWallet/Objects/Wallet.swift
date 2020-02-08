//
//  Wallet.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 03/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import Realm
import RealmSwift

class Wallet: Object, PickerElement {
    
    @objc dynamic var name: String = ""
    @objc dynamic var currency: Currency? = nil
    dynamic var operations: List<Operation> = List<Operation>()
    
    override class func primaryKey() -> String? {
        return "name"
    }
    
    convenience init(name: String, currency: Currency) {
        self.init()
        self.name = name
        self.currency = currency
    }
    
    static var wallets: [Wallet] {
        let realm = try! Realm()
        return Array(realm.objects(Wallet.self))
    }
    
}
