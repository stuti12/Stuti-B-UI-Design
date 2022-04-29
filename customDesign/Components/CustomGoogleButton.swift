//
//  CustomGoogleButton.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 04/05/22.
//

import UIKit

class CustomGoogleButton: CustomButton {
   
    //MARK: - Required init
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setBtnImage(imageName: "google", on: .left)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setBtnImage(imageName: "google", on: .left)
    }
    
    //MARK: - Enum
    enum BtnImageSide {
        case left
    }
    
    func setBtnImage(imageName: String, on side: BtnImageSide) {
        
        let imageView = UIImageView(frame: CGRect(x: 10, y: 5, width: 32, height: 32))
        self.addSubview(imageView)
        if let imageWithSystemName = UIImage(systemName: imageName) {
            
            imageView.image = imageWithSystemName
        }
        else {
            imageView.image = UIImage(named: imageName)
        }
        let imageContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        switch side {
        case .left:
            self.addSubview(imageContainerView)
        }
        
    }
}
