//
//  City.swift
//  Medic
//
//  Created by Алена Горчакова on 15.01.2021.
//

import Foundation
import UIKit

class City: NSObject {
    var city : String
    var mapPin : UIImage
    
    init(city : String,mapPin : UIImage){
        
        self.city = city
        self.mapPin = mapPin
        
    }
}
