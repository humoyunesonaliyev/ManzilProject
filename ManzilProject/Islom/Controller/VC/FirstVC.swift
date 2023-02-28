//
//  FirstVC.swift
//  ManzilProject
//
//  Created by Islombek Sheraliev on 24/02/23.
//

import UIKit

class FirstVC: UIViewController {
    
    let profileView = UIView()
    
    let imageView = UIImageView()
    
    let button = UIButton()
    
    // Right button subviews
    let vectorView = UIView()
    
    let vectorImage = UIImageView()
    
    let vectorButton = UIButton()
    
    let centerView = UIView()
    
    let centerTitle = UILabel()
    
    let centerImage = UIImageView()
    
    let centerButton = UIButton()
    
    let centerStackView = UIStackView()
    
    let finalstackView = UIStackView()
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.delegate = self
            tableView.register(UINib(nibName: "DestinationTVC", bundle: nil), forCellReuseIdentifier: "DestinationTVC")
        }
    }
    
    @IBOutlet weak var refreshView: UIActivityIndicatorView!
    
    var manzillar: [ManzilModel] = [
        ManzilModel(destination: "Toshkent - Samarqand", description: "Chorsu bozor bekati -> Registon", time: "08:00", typeOfVehycle: "Spark", price: "180 000 so'm", driverName: "Abdurahmon aka", driverNumber: "+998 90 123 45 67", carColor: "Whiter", carNumber: "777TAX", regionNumber: "40"),
        ManzilModel(destination: "Namangan - Toshkent", description: "Chorsu bozor bekati -> Registon", time: "10:00", typeOfVehycle: "Spark", price: "210 000 so'm", driverName: "Taxi aka", driverNumber: "+998 90 123 45 67", carColor: "Whiter", carNumber: "777TAX", regionNumber: "60"),
        ManzilModel(destination: "Angren - Chirchiq", description: "Chorsu bozor bekati -> Registon", time: "07:00", typeOfVehycle: "Spark", price: "40 000 so'm", driverName: "Narimon aka", driverNumber: "+998 90 123 45 67", carColor: "Whiter", carNumber: "777TAX", regionNumber: "25"),
        ManzilModel(destination: "Andijon - Xiva", description: "Chorsu bozor bekati -> Registon, Sherdor madrasasi, 10-hujra", time: "08:00", typeOfVehycle: "Spark", price: "500 000 so'm", driverName: "Joha aka", driverNumber: "+998 90 123 45 67", carColor: "Yellow", carNumber: "777TAX", regionNumber: "85"),
        ManzilModel(destination: "Toshkent - Sirdaryo", description: "Chorsu bozor bekati -> Registon", time: "14:00", typeOfVehycle: "Spark", price: "150 000 so'm", driverName: "Abdulloh aka", driverNumber: "+998 90 123 45 67", carColor: "Whiter", carNumber: "001PPP", regionNumber: "01"),
        ManzilModel(destination: "Buxoro - Navoiy", description: "Chorsu bozor bekati -> Registon", time: "21:00", typeOfVehycle: "Spark", price: "90 000 so'm", driverName: "Abdulloh aka", driverNumber: "+998 90 123 45 67", carColor: "Whiter", carNumber: "012APP", regionNumber: "10"),
        ManzilModel(destination: "Termiz - Shahrisabz", description: "Chorsu bozor bekati -> Registon", time: "08:00", typeOfVehycle: "Spark", price: "200 000 so'm", driverName: "Sanjar aka", driverNumber: "+998 90 123 45 67", carColor: "Black", carNumber: "D339DA", regionNumber: "90")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
        setupViews()
        
        self.view.backgroundColor = .systemGray5

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        finalstackView.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        finalstackView.isHidden = false
    }

    func setupViews() {
        
        profileView.addSubview(imageView)
        profileView.addSubview(button)
        
        vectorView.addSubview(vectorImage)
        vectorView.addSubview(vectorButton)
        
        centerView.addSubview(centerStackView)
        centerStackView.addArrangedSubview(centerTitle)
        centerStackView.addArrangedSubview(centerImage)
        centerView.addSubview(centerButton)
        
        vectorImage.image = UIImage(named: "Vector")
        imageView.image = UIImage(named: "masha")
        centerImage.image = UIImage(systemName: "arrow.forward")
        centerImage.tintColor = .white
        vectorImage.tintColor = #colorLiteral(red: 0.7914122343, green: 0.7778411508, blue: 0.7742928267, alpha: 1)
        
        centerImage.snp.makeConstraints { make in
            make.width.height.equalTo(20)
        }
        
        vectorImage.snp.makeConstraints { make in
            make.top.bottom.left.right.equalToSuperview()
        }
        
        vectorButton.snp.makeConstraints { make in
            make.top.bottom.left.right.equalToSuperview()
        }
        
        imageView.snp.makeConstraints { make in
            make.top.bottom.left.right.equalTo(1)
        }
        
        button.snp.makeConstraints { make in
            make.top.bottom.left.right.equalToSuperview()
        }
        
        centerButton.snp.makeConstraints { make in
            make.top.bottom.left.right.equalToSuperview()
        }
        
        centerStackView.snp.makeConstraints { make in
            make.left.equalTo(16)
            make.right.equalTo(-16)
            make.centerY.equalTo(centerView.snp.centerY)
        }
        
        centerTitle.font = UIFont(name: "sf-ui-display-medium", size: 16)
        centerTitle.text = "Qayerga ketmoqchisiz"
        centerTitle.textAlignment = .left
        centerTitle.textColor = .white
        
        centerStackView.distribution = .equalCentering
        centerStackView.spacing = 0
        centerStackView.axis = .horizontal
        centerStackView.alignment = .center
        
        vectorImage.contentMode = .scaleAspectFit
        imageView.contentMode = .scaleAspectFit
        
        vectorButton.backgroundColor = .clear
        vectorButton.setTitle("", for: .normal)
        button.backgroundColor = .clear
        button.setTitle("", for: .normal)
        
    }
    
    func setupNavBar() {
        
//        let radius = profileView.frame.height / 2
        
        guard let navigationBar = self.navigationController?.navigationBar else { return }
//        navigationBar.frame.size = navigationBar.sizeThatFits(CGSize(width: navigationBar.frame.size.width, height: 60))
//        navigationBar.prefersLargeTitles = true
        navigationBar.addSubview(finalstackView)
        finalstackView.addArrangedSubview(profileView)
        finalstackView.addArrangedSubview(centerView)
        finalstackView.addArrangedSubview(vectorView)
        
        finalstackView.axis = .horizontal
        finalstackView.distribution = .fill
        finalstackView.alignment = .center
        finalstackView.spacing = 16
        
        centerView.backgroundColor = #colorLiteral(red: 0.2026360929, green: 0.4528356791, blue: 1, alpha: 1)
        centerView.layer.cornerRadius = 8
        centerView.clipsToBounds = true
        
        centerView.snp.makeConstraints { make in
            make.height.equalTo(46)
        }
        
        profileView.snp.makeConstraints { make in
            make.height.width.equalTo(46)
        }
        
        vectorView.snp.makeConstraints { make in
            make.height.width.equalTo(37)
        }
        
        finalstackView.snp.makeConstraints { make in
            make.left.equalTo(16)
            make.right.equalTo(-16)
            make.bottom.equalTo(-12)
        }
        
        profileView.layer.borderWidth = 1
        profileView.layer.borderColor = #colorLiteral(red: 0.9309713244, green: 0.9309713244, blue: 0.9309713244, alpha: 1)
        profileView.layer.cornerRadius = 23
        profileView.clipsToBounds = true
        
        centerButton.addTarget(self, action: #selector(centerNavButtonTapped(_:)), for: .touchUpInside)
    }
    
    

}

//MARK: - OBJC FUNCTIONS

extension FirstVC {
    
    @objc func centerNavButtonTapped(_ sender: UIButton) {
        let vc = SelectDestinationVC(nibName: "SelectDestinationVC", bundle: nil)
        present(vc, animated: true)
    }
}


    //MARK: - TABLE VIEW DATASOURCE AND DELEGATE

extension FirstVC: UITableViewDelegate {
    
}

extension FirstVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) as? DestinationTVC else { return }
        let vc = InfoVC(nibName: "InfoVC", bundle: nil)
        
        vc.titleView = cell.destinationLabel.text!
//        vc.title = cell.destinationLabel.text
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return manzillar.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DestinationTVC", for: indexPath) as? DestinationTVC else { return UITableViewCell() }
        cell.configureCell(data: manzillar[indexPath.row])
        cell.selectionStyle = .none
        
        return cell
    }
}
