//
//  CustomLabel1.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 30/04/22.
//

import UIKit

class CustomLabel: UILabel {

    let textPadding = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    //MARK: - Required init
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        designLabel()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        designLabel()
    }
    private func designLabel() {
        self.frame = CGRect(x: 0, y: 0, width: 176, height: 25)
        self.textColor = UIColor(red: 0.527, green: 0.527, blue: 0.527, alpha: 1)
      //  self.font = 
        self.font = UIFont(name: "SFPRODISPLAYREGULAR", size: 16)
        self.textColor = UIColor.gray
        self.lineBreakMode = .byWordWrapping
        self.numberOfLines = 0
        
    }
}
