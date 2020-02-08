//
//  AddWalletNavigator.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 04/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

protocol AddWalletNavigatorInput {
    var navigationController: UINavigationController! { get set }
    func toWallets()
}

class AddWalletNavigator: AddWalletNavigatorInput {

    var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func toWallets() {
        navigationController.popViewController(animated: true)
    }


}
