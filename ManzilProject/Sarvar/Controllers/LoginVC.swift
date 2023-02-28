//
//  LoginVC.swift
//  ManzilTest
//
//  Created by Sarvar Qosimov on 25/02/23.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var phoneNumberTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    
    
    
    let hideBtn = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberTF.isSecureTextEntry = false
        phoneNumberTF.delegate = self
        
        
        passwordTF.addSubview(hideBtn)
        passwordTF.isSecureTextEntry = true
        
        hideBtn.setImage(UIImage(systemName: "eye"), for: .normal)
        hideBtn.translatesAutoresizingMaskIntoConstraints = false
        hideBtn.heightAnchor.constraint(equalToConstant: 11).isActive = true
        hideBtn.widthAnchor.constraint(equalToConstant: 20).isActive = true
        hideBtn.rightAnchor.constraint(equalTo: passwordTF.rightAnchor, constant: -13).isActive = true
        hideBtn.topAnchor.constraint(equalTo: passwordTF.topAnchor, constant: 17).isActive = true
        hideBtn.addTarget(self, action: #selector(hideBtnPressed(_:)), for: .touchUpInside)
        passwordTF.delegate = self
        
    }

    @objc func hideBtnPressed(_ sender: Any){
        
        if passwordTF.isSecureTextEntry {
            passwordTF.isSecureTextEntry = false
        } else {
            passwordTF.isSecureTextEntry = true
        }
        
    }
    
    
    @IBAction func parolniUnutdingizmiPressed(_ sender: Any) {
        let vc = ForgetPasswordVC(nibName: "ForgetPasswordVC", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
    @IBAction func dasturdaKirishPressed(_ sender: Any) {
        /*
            End
         */
    }
    
    
    @IBAction func royxatdanOtishPressed(_ sender: Any) {
        let vc = RegistrationVC(nibName: "RegistrationVC", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
}

extension LoginVC: UITextFieldDelegate {

    
//
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        print(string)
//        var text = "+998"
//        text += string
//
//        textField.text = text
//
//        return true
//    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(textField.text!)
        return true
    }
    
    
    
    
    
    
}


