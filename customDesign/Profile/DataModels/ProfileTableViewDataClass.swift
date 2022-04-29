//
//  ProfileTableViewDataClass.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 06/05/22.
//

import Foundation
import UIKit
struct ProfileTableViewDataClass {
   public var title: String
   public var subtitle: String
   public var image: String
   public var price: String
   public var foodType: String
   public var priceUsd: String
   
    init(title:String,subtitle: String,image: String, price : String,foodType: String,priceUsd : String) {
        self.title = title
        self.subtitle = subtitle
        self.image = image
        self.price = price
        self.foodType = foodType
        self.priceUsd = priceUsd
    }
    
    //MARK: - Function
    static func fillData() -> [ProfileTableViewDataClass]{
        var ProfileTableViewList = [ProfileTableViewDataClass]()
        let ProfileScrenOne = ProfileTableViewDataClass(title: "McDonald's", subtitle: "Shortbread, chocolate turtle cookies, and red velvet.", image: "food", price: "$$", foodType: "Chinese", priceUsd: "USD7.4")
        ProfileTableViewList.append(ProfileScrenOne )
        let ProfileScrenTwo = ProfileTableViewDataClass(title: "Uncle Boy's", subtitle: "Shortbread, chocolate turtle cookies, and red velvet.", image: "food-1", price: "$$", foodType: "Chinese", priceUsd: "USD7.4")
        ProfileTableViewList.append(ProfileScrenTwo )
        let ProfileScrenThree = ProfileTableViewDataClass(title: "The Halal Guys", subtitle: "Shortbread, chocolate turtle cookies, and red velvet.", image: "food-3", price: "$$", foodType: "Chinese", priceUsd: "USD7.4")
        ProfileTableViewList.append(ProfileScrenThree )
        return ProfileTableViewList
    }
    
    static func fillData2() -> [ProfileTableViewDataClass] {
        var ProfileTableViewList2 = [ProfileTableViewDataClass]()
        let ProfileScrenFour = ProfileTableViewDataClass(title: "Cafe Brichor's", subtitle: "Shortbread, chocolate turtle cookies, and red velvet.", image: "food-2", price: "$$", foodType: "Chinese", priceUsd: "USD7.4")
        ProfileTableViewList2.append(ProfileScrenFour )
        
        return ProfileTableViewList2
    }
    
    static var header:[String] = ["UPCOMING ORDER                 CLEAR ALL","PAST ORDER                 CLEAR ALL"]
}
