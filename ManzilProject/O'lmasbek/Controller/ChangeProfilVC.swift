//
//  ChangeProfilVC.swift
//  ManzilProject
//
//  Created by O'lmasbek on 25/02/23.
//

import UIKit

class ChangeProfilVC: UIViewController {

    
    @IBOutlet weak var profilImg: UIImageView!
    
    @IBOutlet weak var cameraIcon: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUiComponents()
        
    }
    
    func setupUiComponents() {
        profilImg.layer.cornerRadius = profilImg.frame.height / 2
        
        cameraIcon.layer.cornerRadius = cameraIcon.frame.height / 2
    }
    
    @IBAction func saveBtnTapped(_ sender: Any) {
        dismiss(animated: true)
    }
}
