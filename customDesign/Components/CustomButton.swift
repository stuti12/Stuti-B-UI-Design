//
//  CustomButton.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 30/04/22.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    //MARK: - Variables
    public let textPadding = UIEdgeInsets(top: 10, left: 80, bottom: 10, right: 80)
    
    //MARK: - required Init
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        designButton()
    }
    
    //MARK: - Override Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        designButton()
    }
    private func designButton() {
        self.frame = CGRect(x: 0, y: 0, width: 350, height: 48)
        self.titleLabel?.font = UIFont(name: "SFPRODISPLAYBOLD", size: 25)
        self.setTitleColor(.white, for: .normal)
    }
    
    @IBInspectable var cornerradius: CGFloat = 8.0 {
        didSet {
            self.layer.cornerRadius = cornerradius
        }
    }
}
