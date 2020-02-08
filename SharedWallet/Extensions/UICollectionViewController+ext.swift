//
//  UICollectionViewController+ext.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 03/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

extension UICollectionViewController {

    convenience init(scrollDirection: UICollectionView.ScrollDirection) {
        let layout  = UICollectionViewFlowLayout()
        layout.scrollDirection = scrollDirection
        self.init(collectionViewLayout: layout)
    }


}
