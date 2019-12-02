//
//  AppDelegate.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 03/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let walletsViewModel = WalletsViewModel()
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let walletsCollectionViewController = WalletsCollectionViewController(collectionViewLayout: layout)
        walletsCollectionViewController.viewModel = walletsViewModel
        
        let navigationController = UINavigationController(rootViewController: walletsCollectionViewController)
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.makeKeyAndVisible()
        
        window.rootViewController = navigationController
        
        self.window = window
        return true
    }

}

