//
//  WalletsViewModel.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 03/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import Foundation
import RealmSwift

protocol WalletsViewModelInput {
    
    var wallets: [Wallet] { get }
    
}

class WalletsViewModel: WalletsViewModelInput {
    
    private var realm = try! Realm()
    
    var wallets: [Wallet] {
        return Array(realm.objects(Wallet.self))
    }
    
    
    
    
}


