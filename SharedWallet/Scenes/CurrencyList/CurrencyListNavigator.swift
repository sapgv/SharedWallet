//
//  CurrencyListNavigator.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 05/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

protocol CurrencyNavigatorInput {

    var navigationController: UINavigationController! { get set }
    func toList()

}

class CurrencyNavigator: CurrencyNavigatorInput {
    
    var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func toList() {
        let currencyListViewModel = CurrencyListViewModel()
        let currencyListViewController = CurrencyListViewController(style: .grouped)
        currencyListViewController.viewModel = currencyListViewModel
        navigationController.pushViewController(currencyListViewController, animated: true)
    }
    
    
    
    
    
}
