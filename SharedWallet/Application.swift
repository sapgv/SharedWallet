//
//  Application.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 03/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import Foundation
import UIKit

final class Application {

    static let shared = Application()
    private init() {}
    
    func configure(in window: UIWindow) {
//        let navigationController = UINavigationController()
//        let walletsNavigator = WalletsNavigator(navigationController: navigationController)
//        walletsNavigator.toWallets()
//
//        window.rootViewController = navigationController
        
        let tabsNavigator = TabsNavigator(in: window)
        tabsNavigator.toTabs()
            
        window.makeKeyAndVisible()
    }


}
