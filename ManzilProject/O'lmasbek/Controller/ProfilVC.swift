//
//  ProfilVC.swift
//  ManzilProject
//
//  Created by O'lmasbek on 24/02/23.
//

import UIKit

class ProfilVC: UIViewController {
//UI COMPONENTS
    
    @IBOutlet weak var profilImage: UIImageView!
    
    @IBOutlet weak var userName: UILabel!
    
    
    @IBOutlet weak var userPhone: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUiComponents()

    }
    func setupUiComponents() {
        profilImage.layer.cornerRadius = profilImage.frame.height / 2
    }
    
    @IBAction func changeProfilBtnTapped(_ sender: Any) {
        let vc = ChangeProfilVC(nibName: "ChangeProfilVC", bundle: nil)
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    @IBAction func bookingBtnTapped(_ sender: Any) {
        
    }
    
    @IBAction func settingsBtnTapped(_ sender: Any) {
        let vc = SettingsVC(nibName: "SettingsVC", bundle: nil)
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    @IBAction func changeJobBtnTapped(_ sender: Any) {
        
    }
    
    @IBAction func logOutBtnTapped(_ sender: Any) {
        
    }
    
}
