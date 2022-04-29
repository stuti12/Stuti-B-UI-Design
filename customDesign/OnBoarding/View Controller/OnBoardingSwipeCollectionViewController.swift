//
//                  SwipeCollectionViewController.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 04/05/22.
//

import UIKit

class OnBoardingSwipeCollectionViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var nextButton: CustomButton!
    @IBOutlet weak var customPageControl: UIPageControl!
    @IBOutlet weak var customCollectionView: UICollectionView!
    
    var onBoardingList = [OnBoardingDataClass]()
    var currentPage = 0 {
        didSet {
            customPageControl.currentPage = currentPage
            if currentPage == onBoardingList.count - 1 {
                nextButton.setTitle("GET STARTED", for: .normal)
                nextButton.titleLabel?.font = R.font.sfProDisplayBold(size: 25)
            }
            else {
                nextButton.setTitle("Next", for: .normal)
                nextButton.titleLabel?.font = R.font.sfProDisplayBold(size: 25)
            }
        }
    }
    
    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        onBoardingList = OnBoardingDataClass.fillData()
        customPageControl.numberOfPages = 3
        customPageControl.pageIndicatorTintColor = UIColor.yellow
    }
    
    //MARK: - IBActions
    @IBAction func nextButtonClick(_ sender: UIButton) {
        if currentPage == onBoardingList.count - 1 {
            print("Go to next Page")
            guard let controller = UIStoryboard(name: Constants.signUpStory, bundle:        nil).instantiateViewController(withIdentifier: Constants.loginVC) as? LoginViewController else {return}
            self.navigationController?.pushViewController(controller, animated: true)
        }
        else {
            currentPage += 1
            nextButton.titleLabel?.font = UIFont(name: "SFPRODISPLAYBOLD", size: 25)
            let indexPath = IndexPath(item: currentPage, section: 0)
            customCollectionView.scrollToItem(at: indexPath,at: .top, animated: true)
            customCollectionView.isPagingEnabled = true
        }

    }
}

//MARK: - Extention
extension OnBoardingSwipeCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return onBoardingList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = customCollectionView.dequeueReusableCell(withReuseIdentifier: "OnBoardingCollectionCell", for: indexPath) as? OnBoardingCollectionCell else {
            return UICollectionViewCell()
        }
        
        cell.myImage.image = UIImage(named: onBoardingList[indexPath.row].image)
        cell.title.text = onBoardingList[indexPath.row].title
        cell.subtitle.text = onBoardingList[indexPath.row].subtitle
        return cell
    }
    
}

extension OnBoardingSwipeCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
    }
    
}
