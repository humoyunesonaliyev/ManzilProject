//
//  SelectDestinationVC.swift
//  ManzilProject
//
//  Created by Islombek Sheraliev on 25/02/23.
//

import UIKit

class SelectDestinationVC: UIViewController {
    
    @IBOutlet weak var destinationTF: UITextField!
    
    @IBOutlet weak var timeTF: UITextField!
    
    @IBOutlet weak var priceFromTF: UITextField!
    
    @IBOutlet weak var priceToTF: UITextField!
    
    @IBOutlet weak var typeOfVehycleTF: UITextField! {
        didSet {
            typeOfVehycleTF.delegate = self
        }
    }
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var yesSmoking: UIButton!
    
    @IBOutlet weak var noSmoking: UIButton!
    
    @IBOutlet weak var getResultButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        
        destinationTF.layer.borderColor = #colorLiteral(red: 0.7450980392, green: 0.7294117647, blue: 0.7254901961, alpha: 0.3)
        destinationTF.layer.borderWidth = 1
        
        timeTF.layer.borderColor = #colorLiteral(red: 0.7450980392, green: 0.7294117647, blue: 0.7254901961, alpha: 0.3)
        timeTF.layer.borderWidth = 1
        
        priceFromTF.layer.borderColor = #colorLiteral(red: 0.7450980392, green: 0.7294117647, blue: 0.7254901961, alpha: 0.3)
        priceFromTF.layer.borderWidth = 1
        
        priceToTF.layer.borderColor = #colorLiteral(red: 0.7450980392, green: 0.7294117647, blue: 0.7254901961, alpha: 0.3)
        priceToTF.layer.borderWidth = 1
        
        typeOfVehycleTF.layer.borderColor = #colorLiteral(red: 0.7450980392, green: 0.7294117647, blue: 0.7254901961, alpha: 0.3)
        typeOfVehycleTF.layer.borderWidth = 1
        
        destinationTF.layer.cornerRadius = 8
        timeTF.layer.cornerRadius = 8
        priceFromTF.layer.cornerRadius = 8
        priceToTF.layer.cornerRadius = 8
        typeOfVehycleTF.layer.cornerRadius = 8
        
        destinationTF.layer.sublayerTransform = CATransform3DMakeTranslation(16, 0, 10)
        timeTF.layer.sublayerTransform = CATransform3DMakeTranslation(16, 0, 10)
        priceFromTF.layer.sublayerTransform = CATransform3DMakeTranslation(16, 0, 10)
        priceToTF.layer.sublayerTransform = CATransform3DMakeTranslation(16, 0, 10)
        typeOfVehycleTF.layer.sublayerTransform = CATransform3DMakeTranslation(16, 0, 10)
        
        getResultButton.layer.cornerRadius = 8
        
        
        let button = UIButton(type: .custom)
        button.setImage(UIImage(systemName: "chevron.forward"), for: .normal)
        button.tintColor = #colorLiteral(red: 0.4509803922, green: 0.431372549, blue: 0.4274509804, alpha: 1)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -58, bottom: 0, right: 0)
        button.setTitle("", for: .normal)
        button.frame = CGRect(x: Int(typeOfVehycleTF.frame.width) - 40, y: Int((typeOfVehycleTF.frame.size.height - button.frame.size.height)/2), width: 5, height: 10)
        button.addTarget(self, action: #selector(selectVehycleTapped(_:)), for: .touchUpInside)
        typeOfVehycleTF.rightView = button
        typeOfVehycleTF.rightViewMode = .unlessEditing
        
    }
    
    @IBAction func yesSmokingTapped(_ sender: Any) {
        
        if noSmoking.currentImage == UIImage(systemName: "checkmark.circle.fill") {
            noSmoking.setImage(UIImage(systemName: "circle"), for: .normal)
            noSmoking.tintColor = #colorLiteral(red: 0.7914122343, green: 0.7778411508, blue: 0.7742928267, alpha: 1)
            
            if yesSmoking.currentImage == UIImage(systemName: "checkmark.circle.fill") {
                yesSmoking.setImage(UIImage(systemName: "circle"), for: .normal)
                yesSmoking.tintColor = #colorLiteral(red: 0.7914122343, green: 0.7778411508, blue: 0.7742928267, alpha: 1)
            } else if yesSmoking.currentImage == UIImage(systemName: "circle")  {
                yesSmoking.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .normal)
                yesSmoking.tintColor = .tintColor
            }
            
        }
        
    }
    
    @IBAction func noSmokingTapped(_ sender: Any) {
        
        if yesSmoking.currentImage == UIImage(systemName: "checkmark.circle.fill") {
            yesSmoking.setImage(UIImage(systemName: "circle"), for: .normal)
            yesSmoking.tintColor = #colorLiteral(red: 0.7914122343, green: 0.7778411508, blue: 0.7742928267, alpha: 1)
            
            if noSmoking.currentImage == UIImage(systemName: "checkmark.circle.fill") {
                noSmoking.setImage(UIImage(systemName: "circle"), for: .normal)
                noSmoking.tintColor = #colorLiteral(red: 0.7914122343, green: 0.7778411508, blue: 0.7742928267, alpha: 1)
            } else if noSmoking.currentImage == UIImage(systemName: "circle")  {
                noSmoking.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .normal)
                noSmoking.tintColor = .tintColor
            }
        } 
        
    }
    
    

    @IBAction func getResultTapped(_ sender: Any) {
        dismiss(animated: true)
    }
}

//MARK: - OBJC FUNCs

extension SelectDestinationVC {
    
    @objc func selectVehycleTapped(_ sender: UIButton) {
        let vc = VehicleVC(nibName: "VehicleVC", bundle: nil)
        vc.delegate = self
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
}

extension SelectDestinationVC: VehicleDelegate {
    
    func getVehicle(type: String) {
        typeOfVehycleTF.text = type
    }
}

extension SelectDestinationVC: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        let vc = VehicleVC(nibName: "VehicleVC", bundle: nil)
        vc.delegate = self
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }

}
