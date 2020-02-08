//
//  PickerRow.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 04/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

protocol PickableRow {
    associatedtype Element: PickerElement
    
    var items: [Element] { get set }
    var object: Element? { get set }
}

class PickerRow<T: PickerElement>: Row, PickableRow {

    typealias Element = T
    
    var object: T?
    var items: [T] = [T]()
    
    override var cellType: CellType {
        return .Picker
    }
    
}

class PickerRowBuilder<T: PickerElement>: RowBuilder<PickerRow<T>> {
    
    func setObject(object: T) -> Self {
        row.object = object
        return self
    }
   
    func setItems(items: [T]) -> Self {
        row.items = items
        return self
    }
    
}
