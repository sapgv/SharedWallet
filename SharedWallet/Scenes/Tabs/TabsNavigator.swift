//
//  TabsNavigator.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 04/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

protocol TabsNaviagtorInput {
    
    var tabsViewController: TabsViewController! { get set }
    
        
}

class TabsNavigator: TabsNaviagtorInput {
    
    var tabsViewController: TabsViewController!
    
    init(in window: UIWindow) {

        self.tabsViewController = TabsViewController()
        window.rootViewController = tabsViewController
        
    }
    
    func toTabs() {
        
        let walletNavigationController = UINavigationController()
        walletNavigationController.tabBarItem = UITabBarItem(title: "Wallets", image: nil, tag: 0)
        
        let walletsNavigator = WalletsNavigator(navigationController: walletNavigationController)
        walletsNavigator.toWallets()
        
        let settingsNavigationController = UINavigationController()
        settingsNavigationController.tabBarItem = UITabBarItem(title: "Settings", image: nil, tag: 1)
        
        let settingsNavigator = SettingsNavigator(navigationController: settingsNavigationController)
        settingsNavigator.toSettings()
        
        tabsViewController.setViewControllers([walletNavigationController, settingsNavigationController], animated: true)
        
    }
    
}
