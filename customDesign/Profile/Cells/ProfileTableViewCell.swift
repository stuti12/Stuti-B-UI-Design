//
//  ProfileTableViewCell.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 06/05/22.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

   //MARK: - IBOutlets
    
    @IBOutlet weak var foodImage: UIImageView!
    
    @IBOutlet weak var subtitleLabel: CustomBoldLabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var usdPriceLabel: UILabel!
    @IBOutlet weak var foodTypeLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
