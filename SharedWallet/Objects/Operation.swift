//
//  Operation.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 03/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

enum OperationType: String, CaseIterable {
    case plus
    case minus
    
    static var operations: [OperationType] {
        return OperationType.allCases
    }
}

class Operation: Object {
    
    @objc dynamic var id: String = UUID().uuidString
//    @objc dynamic var wallet: Wallet?
    let wallet = LinkingObjects(fromType: Wallet.self, property: "operations")
    @objc dynamic var amount: Double = 0
    
    override class func primaryKey() -> String? {
        return "id"
    }
    
    @objc dynamic private var privateOperationType: String = OperationType.plus.rawValue
    var opertaionType: OperationType {
        get { return OperationType(rawValue: privateOperationType)! }
        set { privateOperationType = newValue.rawValue }
    }
    
    static func operations() -> [Operation] {
        
        
        
        
        return []
    }
}
