//
//  ProfileDataClass.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 05/05/22.
//

import Foundation
import UIKit
struct ProfileDataClass {
   public var duration: String
   public var free: String
   public var rating: String
   public var image: String
   public var title: String
   public var subtitle: String
    init(duration:String,free: String,rating: String, title : String,subtitle: String,image : String) {
           self.duration = duration
           self.free = free
           self.rating = rating
           self.title = title
           self.subtitle = subtitle
           self.image = image
    }
    //MARK: - Function
    static func fillData() -> [ProfileDataClass]{
        var profileList = [ProfileDataClass]()
        let ProfileScrenOne = ProfileDataClass(duration:"25min",free:"Free",rating:"4.5",title: "McDonald's", subtitle: "Chinese", image: "bg")
        profileList.append(ProfileScrenOne )
        let ProfileScrenTwo = ProfileDataClass(duration:"25min",free:"Free",rating:"4.5",title: "McDonald's", subtitle: "Chinese", image: "bg-2")
        profileList.append(ProfileScrenTwo )
      
        let ProfileScrenFive = ProfileDataClass(duration:"25min",free:"Free",rating:"4.5",title: "McDonald's", subtitle: "Chinese", image: "bg")
        profileList.append(ProfileScrenFive )
        let ProfileScrenSix = ProfileDataClass(duration:"25min",free:"Free",rating:"4.5",title: "McDonald's", subtitle: "Chinese", image: "bg-2")
        profileList.append(ProfileScrenSix )
        let ProfileScrenSeven = ProfileDataClass(duration:"25min",free:"Free",rating:"4.5",title: "McDonald's", subtitle: "Chinese", image: "bg-3")
        profileList.append(ProfileScrenSeven )
        
        return profileList
    }
    
}
