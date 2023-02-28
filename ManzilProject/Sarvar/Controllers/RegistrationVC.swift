//
//  RegistrationVC.swift
//  ManzilTest
//
//  Created by Sarvar Qosimov on 25/02/23.
//

import UIKit

class RegistrationVC: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var surnameTF: UITextField!
    
    @IBOutlet weak var phoneNumberTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func registratePressed(_ sender: Any) {
        let vc = ConfirmationVC(nibName: "ConfirmationVC", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    @IBAction func enterPressed(_ sender: Any) {
    dismiss(animated: true)
    }
    
}
