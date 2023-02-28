//
//  ConfirmationVC.swift
//  ManzilTest
//
//  Created by Sarvar Qosimov on 25/02/23.
//

import UIKit

class ConfirmationVC: UIViewController {

    
    @IBOutlet weak var codeTF1: UITextField!
    
    @IBOutlet weak var codeTF2: UITextField!
    
    @IBOutlet weak var codeTF3: UITextField!
    
    @IBOutlet weak var codeTF4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        codeTF1.delegate = self
        codeTF2.delegate = self
        codeTF3.delegate = self
        codeTF4.delegate = self
        codeTF1.layer.borderColor = #colorLiteral(red: 0.1568627451, green: 0.3450980392, blue: 1, alpha: 1)
        codeTF2.layer.borderColor = #colorLiteral(red: 0.1568627451, green: 0.3450980392, blue: 1, alpha: 1)
        codeTF3.layer.borderColor = #colorLiteral(red: 0.1568627451, green: 0.3450980392, blue: 1, alpha: 1)
        codeTF4.layer.borderColor = #colorLiteral(red: 0.1568627451, green: 0.3450980392, blue: 1, alpha: 1)
    }
    
    
    @IBAction func nextPressed(_ sender: Any) {
        let vc = CreatPasswordVC(nibName: "CreatPasswordVC", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
    @IBAction func backPressed(_ sender: Any) {
    dismiss(animated: true)
    }
    
}

extension ConfirmationVC: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if textField.text?.count != 0 {
            switch textField {
            case codeTF1: codeTF2.becomeFirstResponder()
                codeTF1.layer.borderWidth = 1
            case codeTF2: codeTF3.becomeFirstResponder()
                codeTF2.layer.borderWidth = 1
            case codeTF3: codeTF4.becomeFirstResponder()
                codeTF3.layer.borderWidth = 1
            default: codeTF4.endEditing(true)
                codeTF4.layer.borderWidth = 1
            }
        } else {
            switch textField {
            case codeTF1: codeTF1.endEditing(true)
                codeTF1.layer.borderWidth = 0
            case codeTF2: codeTF1.becomeFirstResponder()
                codeTF2.layer.borderWidth = 0
            case codeTF3: codeTF2.becomeFirstResponder()
                codeTF3.layer.borderWidth = 0
            default:codeTF3.becomeFirstResponder()
                codeTF4.layer.borderWidth = 0
            }
        }
        
        
}
    
}
