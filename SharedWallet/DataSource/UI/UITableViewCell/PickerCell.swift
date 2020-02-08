//
//  PickerCell.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 04/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

protocol PickerCellSetupable {
    
    associatedtype Element: PickerElement

    func setup(for object: Element?, with items: [Element])
}

extension PickerCell: PickerCellSetupable {

    func setup(for object: Currency?, with items: [Currency]) {
        self.delegate = PickerCellDelegate(object: object, items: items, control: self.textField)
    }

}

protocol PickerCellTextFieldSetupable {
    func setupTextField()
    func createPaddingView() -> UIView
}

extension PickerCell: PickerCellTextFieldSetupable {
    func setupTextField() {
        self.textField.text = self.delegate?.object?.name
        self.textField.tintColor = .clear
        self.textField.rightView = createPaddingView()
        self.textField.rightViewMode = .always
        self.textField.inputView = self.delegate?.pickerView
        self.textField.inputAccessoryView = self.delegate?.pickerView.toolbar
        self.textField.textAlignment = .right
    }
    
    func createPaddingView() -> UIView {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 36, height: textField.bounds.height))
        let im = UIImageView(frame: CGRect(x: 0, y: 0, width: 16, height: 16))
        im.image = UIImage(named: "collapse")
        im.center = paddingView.center
        paddingView.addSubview(im)
        return paddingView
    }
}

protocol PickerCellInput {
    
    associatedtype Element: PickerElement
    
    var delegate: PickerCellDelegate<Element>? { get set }
}

class PickerCell: UITableViewCell {

    @IBOutlet weak var textField: UITextField!
    
    typealias Element = Currency
    var delegate: PickerCellDelegate<Currency>?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

protocol PickerCellDelegateInput {
    
    associatedtype Element: PickerElement
    
    var object: Element? { get set }
    var items: [Element] { get set }
    
    var pickerView: PickerView<Element> { get set }
    var control: UIControl? { get set }
    
    func setupPickerView()
}

class PickerCellDelegate<T: PickerElement>: PickerCellDelegateInput {
    
    typealias Element = T
    
    var object: T?
    var items: [T]
    var pickerView: PickerView<T> = PickerView<T>()
    var control: UIControl?
    
    init(object: T?, items: [T] = [], control: UIControl? = nil) {
        self.object = object
        self.items = items
        self.control = control
        setupPickerView()
    }
    
    func setupPickerView() {
        pickerView = PickerView(elements: items, control: control)
        pickerView.doneClosure = { [unowned self] picked in
            if let control = self.control as? UITextField {
                control.text = picked?.name ?? self.items.first?.name
            }
            if let picked = picked {
//                self.object?.onNext(picked)
            }
        }
    }
    
    
}
