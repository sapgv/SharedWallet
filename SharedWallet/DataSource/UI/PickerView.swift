//
//  PickerView.swift
//  SharedWallet
//
//  Created by Grigoriy Sapogov on 04/12/2019.
//  Copyright © 2019 Grigoriy Sapogov. All rights reserved.
//

import UIKit

protocol PickerElement {
    var name: String { get set }
}

class PickerView<T: PickerElement>: UIPickerView, UIPickerViewDataSource, UIPickerViewDelegate {
    
    weak var viewController: UIViewController?
    weak var control: UIControl?
    
    var pickedElement: T?
    var cancelClosure: (() -> Void)?
    var doneClosure: ((T?) -> Void)?
    var didSelectClosure: ((T?) -> Void)?
    var elements: [T] = []
    
    var toolbar: UIToolbar {
        let toolBar =  UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 35))
        toolBar.barStyle = UIBarStyle.default
        toolBar.sizeToFit()
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.plain, target: self, action: #selector(cancel))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.plain, target: self, action: #selector(done))
        
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        
        return toolBar
    }
    
    init(elements: [T] = [], control: UIControl? = nil, viewController: UIViewController? = nil, frame: CGRect = CGRect.zero) {
        self.elements = elements
        self.control = control
        self.viewController = viewController
        super.init(frame: frame)
        dataSource = self
        delegate = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - UIPickerViewDataSource
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return elements.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let element = elements[row]
        return element.name
    }
    
    @objc func cancel(sender: Any) {
        cancelClosure?()
        control?.endEditing(true)
        viewController?.view.endEditing(true)
    }
    
    @objc func done(sender: Any) {
        doneClosure?(pickedElement ?? elements.first)
        control?.endEditing(true)
        viewController?.view.endEditing(true)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if elements.count < row {
            return
        }
        pickedElement = elements[row]
        didSelectClosure?(pickedElement)
    }
    
}

