//
//  CreatPasswordVC.swift
//  ManzilTest
//
//  Created by Sarvar Qosimov on 26/02/23.
//

import UIKit

class CreatPasswordVC: UIViewController {
    
    @IBOutlet weak var creatPasswordTF: UITextField!
    
    @IBOutlet weak var confirmPasswordTF: UITextField!
    
    let hideBtn1 = UIButton(type: .system)
    let hideBtn2 = UIButton(type: .system)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpHideBtns()
    }

    //MARK: @objc functions
    
    @objc func hideBtnPressed(_ sender: Any){
        
        if creatPasswordTF.isSecureTextEntry {
            creatPasswordTF.isSecureTextEntry = false
            hideBtn1.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        } else {
            creatPasswordTF.isSecureTextEntry = true
            hideBtn1.setImage(UIImage(systemName: "eye"), for: .normal)
        }
    }
    
    @objc func hideBtnPressed2(_ sender: Any){
        
        if confirmPasswordTF.isSecureTextEntry {
            confirmPasswordTF.isSecureTextEntry = false
            hideBtn2.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        } else {
            confirmPasswordTF.isSecureTextEntry = true
            hideBtn2.setImage(UIImage(systemName: "eye"), for: .normal)
        }
    }

    func setUpHideBtns(){
        /**
                                        setup HideButton to creatPasswordTF
         */

        creatPasswordTF.addSubview(hideBtn1)
        creatPasswordTF.isSecureTextEntry = true
        
        hideBtn1.setImage(UIImage(systemName: "eye"), for: .normal)
        hideBtn1.tintColor = #colorLiteral(red: 0.4509803922, green: 0.431372549, blue: 0.4274509804, alpha: 1)
        hideBtn1.translatesAutoresizingMaskIntoConstraints = false
        hideBtn1.heightAnchor.constraint(equalToConstant: 16).isActive = true
        hideBtn1.widthAnchor.constraint(equalToConstant: 25).isActive = true
        hideBtn1.rightAnchor.constraint(equalTo: creatPasswordTF.rightAnchor, constant: -13).isActive = true
        hideBtn1.topAnchor.constraint(equalTo: creatPasswordTF.topAnchor, constant: 17).isActive = true
        hideBtn1.addTarget(self, action: #selector(hideBtnPressed(_:)), for: .touchUpInside)
        
            /**
                                      setup HideButton to confirmPasswordTF
             */
        
        confirmPasswordTF.addSubview(hideBtn2)
        confirmPasswordTF.isSecureTextEntry = true
        
        hideBtn2.setImage(UIImage(systemName: "eye"), for: .normal)
        hideBtn2.tintColor = #colorLiteral(red: 0.4509803922, green: 0.431372549, blue: 0.4274509804, alpha: 1)
        hideBtn2.translatesAutoresizingMaskIntoConstraints = false
        hideBtn2.heightAnchor.constraint(equalToConstant: 16).isActive = true
        hideBtn2.widthAnchor.constraint(equalToConstant: 25).isActive = true
        hideBtn2.rightAnchor.constraint(equalTo: confirmPasswordTF.rightAnchor, constant: -13).isActive = true
        hideBtn2.topAnchor.constraint(equalTo: confirmPasswordTF.topAnchor, constant: 17).isActive = true
        hideBtn2.addTarget(self, action: #selector(hideBtnPressed2(_:)), for: .touchUpInside)
    }
    
    
    @IBAction func nextPressed(_ sender: Any) {
        let vc = FirstVC()
        let navVC = UINavigationController(rootViewController : vc)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)
    }
    
    
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
}
