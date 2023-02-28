//
//  DestinationTVC.swift
//  ManzilProject
//
//  Created by Islombek Sheraliev on 24/02/23.
//

import UIKit

class DestinationTVC: UITableViewCell {
    
    @IBOutlet weak var destinationLabel: UILabel!
    
    @IBOutlet weak var extendedDestinationLabel: UILabel!
    
    @IBOutlet weak var timeOfLeavingLabel: UILabel!
    
    @IBOutlet weak var typeOfCarLabel: UILabel!
    
    @IBOutlet weak var priceOfServiceLabel: UILabel!
    
    @IBOutlet weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.layer.cornerRadius = 12
        containerView.clipsToBounds = true
    }
    
    func configureCell(data: ManzilModel) {
        destinationLabel.text = data.destination
        extendedDestinationLabel.text = data.description
        timeOfLeavingLabel.text = data.time
        typeOfCarLabel.text = data.typeOfVehycle
        priceOfServiceLabel.text = data.price
    }

}
