//
//  CustomTextField.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 30/04/22.
//

import UIKit
@IBDesignable
class CustomTextField: UITextField {
    
    //MARK: - Variables
    public let textPadding = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 100)
    
    //MARK: - required Init
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        designTextField()
    }
    
    //MARK: - Override Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        designTextField()
    }
    
    //MARK: - Override methods
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    private func designTextField() {
        self.layer.backgroundColor = UIColor(red: 0.984, green: 0.984, blue: 0.984, alpha: 1).cgColor
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(red: 0.953, green: 0.949, blue: 0.949, alpha: 1).cgColor
        self.layer.cornerRadius = 6
        self.frame = CGRect(x: 0, y: 0, width: 335, height: 54)
        self.font = UIFont(name: "SFPRODISPLAYREGULAR", size: 16)
    }
    
    @IBInspectable var padding: CGFloat = 10
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.rightViewRect(forBounds: bounds)
        textRect.origin.x -= padding
        return textRect
    }
    
    @IBInspectable var rightImage: UIImage? {
        didSet {
            updateView()
        }
    }
    
    func updateView() {
        if let image = rightImage {
            rightViewMode = UITextField.ViewMode.always
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            imageView.contentMode = .scaleAspectFit
            imageView.image = image
            rightView = imageView
        } else {
            rightViewMode = UITextField.ViewMode.never
            rightView = nil
        }
    }
    
}
