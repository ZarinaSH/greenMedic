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
    
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.modalPresentationStyle = .fullScreen
        
        citys.append("Казань")
        citys.append("Набережные Челны")
        citys.append("Йошкар Ола")
        citys.append("Альметьевск")
        citys.append("Елабуга")
        citys.append("Буинск")
        citys.append("Арск")
        citys.append("Зеленодольск")
        citys.append("Лаишево")
        citys.append("Чистополь")
        citys.append("Мамадыш")
        citys.append("Заинск")

        tableView.delegate = self
        tableView.dataSource = self
        
        

    }
    

}

extension CityViewController : UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return citys.count
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if cell==nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        
      cell?.textLabel?.text = citys[indexPath.item]
       
      cell?.imageView?.image = UIImage(named: "gps")
        
        return cell!
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let newVC = storyboard?.instantiateViewController(withIdentifier: "MedicalDirectionsViewController") as? MedicalDirectionsViewController {
            newVC.modalTransitionStyle = .crossDissolve // это значение можно менять для разных видов анимации появления
            newVC.modalPresentationStyle = .fullScreen
            //newVC.modalPresentationStyle = .overCurrentContext
            // это та самая волшебная строка, убрав или закомментировав ее, вы получите появление смахиваемого контроллера
            
            let buff = citys[indexPath.item]
            
            newVC.texxt = buff
            
            present(newVC, animated: false, completion: nil)
           }
    }
   
}

