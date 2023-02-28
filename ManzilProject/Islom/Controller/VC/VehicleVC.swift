//
//  VehicleVC.swift
//  ManzilProject
//
//  Created by Islombek Sheraliev on 27/02/23.
//

import UIKit

class VehicleVC: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var tableView: UITableView!
    
    var typesOfVehicles = [
        "Lacetti",
        "Cobalt",
        "Damas",
        "Epica",
        "Spark",
        "Matiz",
        "Gazel",
        "Malibu",
        "Tracker"
    ]
    
    var delegate: VehicleDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "VehicleTVC", bundle: nil), forCellReuseIdentifier: "VehicleTVC")
        containerView.layer.cornerRadius = 20
    }

    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
}

extension VehicleVC: UITableViewDelegate {
    
}

extension VehicleVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let cell = tableView.cellForRow(at: indexPath) as? VehicleTVC else { return }
        delegate?.getVehicle(type: cell.vehicleLbl.text!)
        dismiss(animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        typesOfVehicles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "VehicleTVC", for: indexPath) as? VehicleTVC else { return UITableViewCell() }
        cell.configureCell(type: typesOfVehicles[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
}
