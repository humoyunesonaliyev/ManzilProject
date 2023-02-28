//
//  InfoVC.swift
//  ManzilProject
//
//  Created by Islombek Sheraliev on 27/02/23.
//

import UIKit

class InfoVC: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var priceLbl: UILabel!
    
    var titleView = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray6
        setupNavBar()
    }
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func setupNavBar() {
        
        let label = UILabel()
        label.font = UIFont(name: "sf-ui-display-bold", size: 24)
        label.text = titleView
        label.textColor = .black
        
        navigationItem.titleView = label
        navigationItem.largeTitleDisplayMode = .never
        
        navigationController?.navigationItem.backButtonTitle = ""
    }
    
    
    @IBAction func bookPlacePressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
}

extension InfoVC: UITableViewDelegate {
    
}

extension InfoVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "InfoTVC", for: indexPath) as? InfoTVC else { return UITableViewCell() }
        
        return cell
        
    }
    
}
