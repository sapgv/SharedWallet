//
//  Realm+ext.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 05/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import RealmSwift

extension Results {
    
    var asArray: [Element] {
        return Array(self)
    }
    
}
