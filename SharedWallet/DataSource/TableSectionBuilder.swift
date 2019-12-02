//
//  TableSectionBuilder.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 03/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import Foundation

class TableSectionBuilder {
    
    private var section: TableSection
    
    init() {
        section = TableSection()
    }
    
    @discardableResult
    func setName(_ name: String) -> Self {
        section.setName(name)
        return self
    }
    
    @discardableResult
    func setHeaderDescription(_ headerDescription: String) -> Self {
        section.setHeaderDescription(headerDescription)
        return self
    }
    
    @discardableResult
    func setFooterDescription(_ footerDescription: String) -> Self {
        section.setFooterDescription(footerDescription)
        return self
    }
    
    @discardableResult
    func setRows(_ rows: [Row]) -> Self {
        section.setRows(rows)
        return self
    }
    
    @discardableResult
    func build() -> TableSection {
        return section
    }
    
}
