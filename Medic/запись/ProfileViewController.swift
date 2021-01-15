//
//  ProfileViewController.swift
//  Medic
//
//  Created by Зарина Шагимуратова on 15.01.2021.
//

import UIKit

class ProfileViewController: UIViewController {

  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    

    @IBAction func zapis(_ sender: Any) {
        let newVC = storyboard!.instantiateViewController(withIdentifier: "MedicalDirectionsViewController")
            newVC.modalTransitionStyle = .crossDissolve // это значение можно менять для разных видов анимации появления
            newVC.modalPresentationStyle = .fullScreen
            //newVC.modalPresentationStyle = .overCurrentContext
            // это та самая волшебная строка, убрав или закомментировав ее, вы получите появление смахиваемого контроллера
        self.present(newVC, animated: true, completion: nil)
    }


}
