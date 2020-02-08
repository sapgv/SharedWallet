//
//  SetingsNavigator.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 05/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

protocol SettingsNavigatorInput {
    
    var navigationController: UINavigationController! { get set }
    func toSettings()
    func toCurrencyList()
    
}

class SettingsNavigator: SettingsNavigatorInput {
   
    
    var navigationController: UINavigationController!
    
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func toSettings() {
        
        let settingsViewModel = SettingsViewModel()
        settingsViewModel.navigator = self
        let settingsViewController = SettingsViewController(style: .grouped)
        settingsViewController.viewModel = settingsViewModel
        navigationController.pushViewController(settingsViewController, animated: true)
        
    }
    
    func toCurrencyList() {
        
        let currencyListViewModel = CurrencyListViewModel()
        let currencyListViewController = CurrencyListViewController()
        currencyListViewController.viewModel = currencyListViewModel
        navigationController.pushViewController(currencyListViewController, animated: true)
        
    }
}
