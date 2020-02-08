//
//  WalletsNavigator.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 03/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

protocol WalletsNaviagtorInput {
    
    var navigationController: UINavigationController! { get set } 
    
    func create()
    func toWallet(wallet: Wallet)
    func toWallets()
}

class WalletsNavigator: WalletsNaviagtorInput {
    var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func toWallets() {
    
        let walletsViewModel = WalletsViewModel(navigator: self)
        let walletsCollectionViewController = WalletsCollectionViewController(scrollDirection: .vertical)
        walletsCollectionViewController.viewModel = walletsViewModel

        navigationController.pushViewController(walletsCollectionViewController, animated: true)
        
    }
    
    
    func create() {
        
        let addWalletNavigator = AddWalletNavigator(navigationController: navigationController)
        let addWalletViewModel = AddWalletViewModel()
        addWalletViewModel.navigator = addWalletNavigator
        
        let addWalletViewController = AddWalletViewController(style: .grouped)
        addWalletViewController.viewModel = addWalletViewModel
        
        navigationController.pushViewController(addWalletViewController, animated: true)
        
    }
    
    func toWallet(wallet: Wallet) {
        
    }
    
    
    
    
    
}
