//
//  CustomBoldLabel.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 03/05/22.
//

import UIKit

class CustomBoldLabel: UILabel {
    
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
        self.font = R.font.sfProDisplayBold(size: 16)
        self.lineBreakMode = .byWordWrapping
        self.numberOfLines = 0
        
    }
}
