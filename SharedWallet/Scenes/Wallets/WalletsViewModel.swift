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
    
    var navigator: WalletsNaviagtorInput! { get set }
    var wallets: [Wallet] { get }
    func create()
    
}

class WalletsViewModel: WalletsViewModelInput {
    
    var navigator: WalletsNaviagtorInput!
    private var realm = try! Realm()
    
    init(navigator: WalletsNaviagtorInput) {
        self.navigator = navigator
    }
    
    var wallets: [Wallet] {
        return Array(realm.objects(Wallet.self))
    }
    
    func create() {
        navigator.create()
    }
    
    
}


