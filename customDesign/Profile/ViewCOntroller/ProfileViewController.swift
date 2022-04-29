//
//  ProfileViewController.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 05/05/22.
//

import UIKit

class ProfileViewController: UIViewController {
//MARK: - IBOutlet
    
    @IBOutlet weak var profileCollectionView: UICollectionView!
    public var profileList = [ProfileDataClass]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        profileList = ProfileDataClass.fillData()
    }
}
//MARK: - extentions
extension ProfileViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return profileList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = profileCollectionView.dequeueReusableCell(withReuseIdentifier: Constants.profileCollectionViewCell, for: indexPath) as? ProfileCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.durationLabel.text = profileList[indexPath.row].duration
        cell.freeLabel.text = profileList[indexPath.row].free
        cell.ratingLabel.text = profileList[indexPath.row].rating
        cell.foodImage.image = UIImage(named: profileList[indexPath.row].image)
        cell.titleLabel.text = profileList[indexPath.row].title
        cell.ratingLabel.layer.cornerRadius = 8
        cell.subtitleLabel.text = profileList[indexPath.row].subtitle
        return cell
    }
   
}
extension ProfileViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: Constants.secondProfile) as? ProfileSecondScreenViewController else { return  }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension ProfileViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           let flowayout = collectionViewLayout as? UICollectionViewFlowLayout
           let space: CGFloat = (flowayout?.minimumInteritemSpacing ?? 0.0) + (flowayout?.sectionInset.left ?? 0.0) + (flowayout?.sectionInset.right ?? 0.0)
           let size:CGFloat = (profileCollectionView.frame.size.width - space) / 2.0
           return CGSize(width: size, height: 300)
       }
}
