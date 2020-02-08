//
//  ButtonCell.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 05/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

class ButtonCell: UITableViewCell {

    @IBOutlet weak var button: UIButton!
    weak var row: ButtonRow!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(for row: ButtonRow) {
        self.row = row
            button.addTarget(self, action: #selector(actionButton(sender:)), for: .touchUpInside)
        
        
    }
    
    @objc
    func actionButton(sender: UIButton) {
        print("act")
        if let row = row {
            row.action?(row)
        }
    }
}
