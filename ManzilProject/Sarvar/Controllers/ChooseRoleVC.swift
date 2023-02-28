//
//  ChooseRoleVC.swift
//  ManzilTest
//
//  Created by Sarvar Qosimov on 25/02/23.
//

import UIKit

class ChooseRoleVC: UIViewController {
    
    @IBOutlet weak var mijozBolishView: UIView!
    
    @IBOutlet weak var taksistBolish: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mijozBolishView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(mijozPerrsed(_ :))))
    }

    @objc func mijozPerrsed(_ sender : Any){
        let vc = LoginVC(nibName: "LoginVC", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
}
