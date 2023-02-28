//
//  Classes.swift
//  ManzilProject
//
//  Created by Islombek Sheraliev on 24/02/23.
//

import Foundation
import UIKit
import SnapKit


class LeftView: UIView {
    
    let imageView = UIImageView()
    
    let button = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubViews()
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addSubViews()
        setupViews()
    }
    
    func addSubViews() {
        self.addSubview(imageView)
        self.addSubview(button)
    }
    
    func setupViews() {
        
        imageView.snp.makeConstraints { make in
            make.top.bottom.left.right.equalToSuperview()
        }
        
        button.snp.makeConstraints { make in
            make.top.bottom.left.right.equalToSuperview()
        }
        
        imageView.contentMode = .scaleAspectFit
        
        button.backgroundColor = .clear
        button.setTitle("", for: .normal)
        
    }
}

protocol VehicleDelegate {
    
    func getVehicle(type: String)
}
