//
//  CustomLabelBoldBig.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 04/05/22.
//

import UIKit

class CustomLabelBoldBig: UILabel {

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
        self.textColor = UIColor.black
        self.font = R.font.sfProDisplayBold(size: 30)
        self.lineBreakMode = .byWordWrapping
        self.numberOfLines = 0
        
    }
}
