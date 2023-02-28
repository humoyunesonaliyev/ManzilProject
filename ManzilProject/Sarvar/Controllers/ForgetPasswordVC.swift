//
//  ForgetPasswordVC.swift
//  ManzilTest
//
//  Created by Sarvar Qosimov on 26/02/23.
//

import UIKit

class ForgetPasswordVC: UIViewController {

    
    @IBOutlet weak var phoneNumberTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

   
    
    @IBAction func nextPressed(_ sender: Any) {
        let vc = ConfirmationVC(nibName: "ConfirmationVC", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
}
