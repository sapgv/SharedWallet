//
//  CurrencyListViewController.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 05/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

class CurrencyListViewController: UITableViewController {
    
    var viewModel: CurrencyListViewModelInput!
    
    deinit {
        print("deinit \(type(of: self))")
    }
}
