//
//  VehicleTVC.swift
//  ManzilProject
//
//  Created by Islombek Sheraliev on 27/02/23.
//

import UIKit

class VehicleTVC: UITableViewCell {

    @IBOutlet weak var vehicleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configureCell(type: String) {
        vehicleLbl.text = type
    }


    
}
