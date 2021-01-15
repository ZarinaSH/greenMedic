//
//  ВходViewController.swift
//  Medic
//
//  Created by Алена Горчакова on 18.12.2020.
//

import UIKit

class SiqnInViewController: UIViewController {

    
   
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func toUp(_ sender: UIButton) {
        
        let newVC = storyboard!.instantiateViewController(withIdentifier: "SiqnUpViewController")
       
            newVC.modalTransitionStyle = .crossDissolve // это значение можно менять для разных видов анимации появления
            newVC.modalPresentationStyle = .fullScreen
            //newVC.modalPresentationStyle = .overCurrentContext
            // это та самая волшебная строка, убрав или закомментировав ее, вы получите появление смахиваемого контроллера
       
        self.present(newVC, animated: true, completion: nil)
    }
   
    
    @IBAction func toCity(_ sender: UIButton) {
        
        let newVC = storyboard!.instantiateViewController(withIdentifier: "CityViewController")
       
            newVC.modalTransitionStyle = .crossDissolve // это значение можно менять для разных видов анимации появления
            newVC.modalPresentationStyle = .fullScreen
            //newVC.modalPresentationStyle = .overCurrentContext
            // это та самая волшебная строка, убрав или закомментировав ее, вы получите появление смахиваемого контроллера
       
        self.present(newVC, animated: true, completion: nil)
    }
  
   
    
    
    
    
    }
    

