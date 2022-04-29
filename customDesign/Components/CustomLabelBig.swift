//
//  CustomLabelBig.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 03/05/22.
//

import UIKit

class CustomLabelBig: UILabel {
    
    //MARK: - required Init
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        designLabel()
    }
    
    //MARK: - Override Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        designLabel()
    }
    
    private func designLabel() {
        self.textColor = UIColor.black
        self.font = UIFont(name:"SFProDisplay-Medium", size: 34)
        self.lineBreakMode = .byWordWrapping
        self.numberOfLines = 0
        
    }
}
