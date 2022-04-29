//
//  ProfileSecondScreenViewController.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 06/05/22.
//

import UIKit

class ProfileSecondScreenViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var profileTableView: UITableView!
    public var profileList = [ProfileTableViewDataClass]()
    public var profileList2 = [ProfileTableViewDataClass]()
      
    //MARK: -Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        profileList = ProfileTableViewDataClass.fillData()
        profileList2 = ProfileTableViewDataClass.fillData2()
    }
    
}
//MARK: - Extentions
extension ProfileSecondScreenViewController: UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var rowCount = ""
        if section == 0 {
            rowCount = ProfileTableViewDataClass.header[0]
        }
        if section == 1 {
            rowCount = ProfileTableViewDataClass.header[1]
        }
        return rowCount
    }
    
}
extension ProfileSecondScreenViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rowCount = 0
        if section == 0 {
            rowCount = profileList.count
        }
        if section == 1 {
            rowCount = profileList2.count
        }
        return rowCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: ProfileTableViewCell = (tableView.dequeueReusableCell(
            withIdentifier: Constants.profileTableViewCell) as? ProfileTableViewCell) else {
                return UITableViewCell()
            }
        if (indexPath.section == 0) {
            cell.titleLabel.text = profileList[indexPath.row].title
            cell.subtitleLabel.text = profileList[indexPath.row].subtitle
            cell.foodImage.image = UIImage(named: profileList[indexPath.row].image)
            cell.priceLabel.text = profileList[indexPath.row].price
            cell.foodTypeLabel.text = profileList[indexPath.row].foodType
            cell.usdPriceLabel.text = profileList[indexPath.row].priceUsd
        } else if (indexPath.section == 1) {
            cell.titleLabel.text = profileList2[indexPath.row].title
            cell.subtitleLabel.text = profileList2[indexPath.row].subtitle
            cell.foodImage.image = UIImage(named: profileList2[indexPath.row].image)
            cell.priceLabel.text = profileList2[indexPath.row].price
            cell.foodTypeLabel.text = profileList2[indexPath.row].foodType
            cell.usdPriceLabel.text = profileList2[indexPath.row].priceUsd
        }
        return cell
    }
    
    
}
