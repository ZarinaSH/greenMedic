//
//  CityTableViewCell.swift
//  Medic
//
//  Created by Алена Горчакова on 15.01.2021.
//

import UIKit

class CityTableViewCell: UITableViewCell {

    @IBOutlet weak var mappin: UIImageView!
    @IBOutlet weak var name_city: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
