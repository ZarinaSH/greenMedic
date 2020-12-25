//
//  РегистрацияViewController.swift
//  Medic
//
//  Created by Алена Горчакова on 18.12.2020.
//

import UIKit

class ___________ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    @IBAction func goToCity(_ sender: UIButton) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "CityViewController")
        navigationController?.pushViewController(newVC!, animated : true)
    }
    
    @IBAction func goToEnter(_ sender: UIButton) {
      navigationController?.popToRootViewController(animated: true)
    }
//
    
    
}
