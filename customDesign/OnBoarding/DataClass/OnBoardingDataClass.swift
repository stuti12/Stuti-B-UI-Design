//
//  DataClass.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 04/05/22.
//

import Foundation
struct OnBoardingDataClass {
    var title: String
    var subtitle: String
    var image : String
    init(title : String,subtitle: String,image : String) {
           self.title = title
           self.subtitle = subtitle
           self.image = image
    }
    
    //MARK: - Function
    static func fillData() -> [OnBoardingDataClass]{
        var onBoardingList = [OnBoardingDataClass]()
        let onBoardScrenOne = OnBoardingDataClass(title: "All your favorites", subtitle: "Order from the best local restaurants with easy, on-demand delivery.", image: "Illustrations")
        onBoardingList.append(onBoardScrenOne )
        let OnBoardScreenTwo = OnBoardingDataClass(title: "Free delivery offers", subtitle: "Free delivery for new customers via Apple Pay and others payment methods.", image: "Illustrations1")
        onBoardingList.append(OnBoardScreenTwo)
        let OnBoardScreenThree = OnBoardingDataClass(title: "Choose your food", subtitle: "Easily find your type of food craving and you’ll get delivery in wide range.", image: "Illustrations2")
        onBoardingList.append(OnBoardScreenThree)
        return onBoardingList
    }
}
