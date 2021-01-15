//
//  ModelCity.swift
//  Medic
//
//  Created by Алена Горчакова on 15.01.2021.
//

import Foundation
import UIKit

class ModelCity {
    var cityes = [City]()
    init () {
        setup()
    }
    func setup (){
        let city1 = City(city: "Казань", mapPin: UIImage(named: "mappin")!)
        let city2 = City(city: "Бугульма", mapPin: UIImage(named: "mappin")!)
        let city3 = City(city: "Зеленодольск", mapPin: UIImage(named: "mappin")!)
        let city4 = City(city: "Чистополь", mapPin: UIImage(named: "mappin")!)
        let city5 = City(city: "Елабуга", mapPin: UIImage(named: "mappin")!)
        let city6 = City(city: "Заинск", mapPin: UIImage(named: "mappin")!)
        let city7 = City(city: "Богатые Сабы", mapPin: UIImage(named: "mappin")!)
        
        cityes.append(city1)
        cityes.append(city2)
        cityes.append(city3)
        cityes.append(city4)
        cityes.append(city5)
        cityes.append(city6)
        cityes.append(city7)
    }
}
