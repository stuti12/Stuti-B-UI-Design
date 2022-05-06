//
//  LabelSmall.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 03/05/22.
//

import UIKit

class LabelSmall: CustomLabelBig {
   
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
        self.font = UIFont(name:"SFProDisplay-Medium", size: 12)
        self.textColor = UIColor.gray
        self.lineBreakMode = .byWordWrapping
        self.numberOfLines = 0
        
    }
}
