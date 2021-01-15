//
//  CityViewController.swift
//  Medic
//
//  Created by Алена Горчакова on 18.12.2020.
//

import UIKit

class CityViewController: UIViewController {
    
    var citys = [String]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var model = ModelCity()
    let cellID = "CityTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self


    }
    

}

extension CityViewController : UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.cityes.count
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! CityTableViewCell
        
        let city = model.cityes[indexPath.row]
        cell.name_city.text = city.city
        cell.mappin.image = city.mapPin
        
     
        return cell
    }

    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let newVC = storyboard?.instantiateViewController(withIdentifier: "MedicalDirectionsViewController") as? MedicalDirectionsViewController {
//            newVC.modalTransitionStyle = .crossDissolve // это значение можно менять для разных видов анимации появления
//            newVC.modalPresentationStyle = .fullScreen
//            //newVC.modalPresentationStyle = .overCurrentContext
//            // это та самая волшебная строка, убрав или закомментировав ее, вы получите появление смахиваемого контроллера
//
//            let buff =  model.cityes[indexPath.item].city
//
//
//            newVC.texxt = buff
//
//            present(newVC, animated: false, completion: nil)
//           }
//    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let newVC = storyboard?.instantiateViewController(withIdentifier: "MedicalDirectionsViewController") as? MedicalDirectionsViewController {
            newVC.modalTransitionStyle = .crossDissolve // это значение можно менять для разных видов анимации появления
            newVC.modalPresentationStyle = .fullScreen
            //newVC.modalPresentationStyle = .overCurrentContext
            // это та самая волшебная строка, убрав или закомментировав ее, вы получите появление смахиваемого контроллера
            
            let buff =  model.cityes[indexPath.item].city

            newVC.texxt = buff
            
            
            
            present(newVC, animated: false, completion: nil)
            
           }
    }
   
}

