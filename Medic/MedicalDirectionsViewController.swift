//
//  MedicalDirectionsViewController.swift
//  Medic
//
//  Created by Зарина Шагимуратова on 27.12.2020.
//

import UIKit

class MedicalDirectionsViewController: UIViewController{

    var med = [String]()
    let cellID = "cellID"

    @IBOutlet weak var testCity: UITextView!
    
   
    @IBOutlet weak var uslugi: UITableView!
    var texxt:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testCity.text = "Ваш город - " + texxt!
        
        med.append("МРТ")
        med.append("РКТ")
        med.append("УЗИ")
        med.append("Дестинометрия")
        med.append("Рентген")
        med.append("Анализы")
       
        uslugi.dataSource = self
        uslugi.delegate = self
        
        
    }


}
extension MedicalDirectionsViewController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return med.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if cell==nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = med[indexPath.item]

        return cell!
    }


}
