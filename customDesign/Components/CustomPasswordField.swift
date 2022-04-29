//
//  CustomPasswordField.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 02/05/22.
//

import UIKit

class CustomPasswordField: CustomTextField {
    
    //MARK: - Variables
    public let rightButton  = UIButton(type: .custom)
    
    //MARK: - required Init
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
        
    }
    
    //MARK: - Override Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        rightButton.setImage(UIImage(named: "hide") , for: .normal)
        rightButton.addTarget(self, action: #selector(toggleShowHide), for: .touchUpInside)
        rightButton.frame = CGRect(x:0, y:0, width:30, height:30)
        
        rightViewMode = .always
        rightView = rightButton
        isSecureTextEntry = true
    }
    
    @objc
    func toggleShowHide(button: UIButton) {
        toggle()
    }
    
    func toggle() {
        isSecureTextEntry = !isSecureTextEntry
        if isSecureTextEntry {
            rightButton.setImage(UIImage(named: "hide") , for: .normal)
        } else {
            rightButton.setImage(UIImage(named: "show") , for: .normal)
        }
    }
    
}
