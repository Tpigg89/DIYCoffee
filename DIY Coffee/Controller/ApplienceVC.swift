//
//  ApplienceVC.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 24/12/2019.
//  Copyright © 2019 Thomas Pigg. All rights reserved.
//

import UIKit

class ApplienceVC: UIViewController, UITableViewDelegate, UITableViewDataSource {


    let logoImage = UIImage(named: "DIYCoffeeLogoDark")
    let logoImageView = UIImageView()
    let applienceTableView = UITableView()
    let applienceHeader = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.9324248433, green: 0.9268818498, blue: 0.9366856217, alpha: 1)
        logoImageView.image = logoImage
        self.navigationItem.titleView = logoImageView
        self.navigationController?.navigationBar.isHidden = false
// add subviews
        view.addSubview(applienceHeader)
        view.addSubview(applienceTableView)
//Modify subviews
        applienceTableView.dataSource = self
        applienceTableView.delegate = self
        setUpHeader()
        setUpTableView()
    }

    func setUpHeader() {
        applienceHeader.textColor = .black
        applienceHeader.font = UIFont(name: "Futura", size: 30)
        applienceHeader.text = "Appliences"
        applienceHeader.translatesAutoresizingMaskIntoConstraints = false
        applienceHeader.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        applienceHeader.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
    }
    
    func setUpTableView() {
        applienceTableView.backgroundColor = .clear
        applienceTableView.translatesAutoresizingMaskIntoConstraints = false
        applienceTableView.topAnchor.constraint(equalTo: applienceHeader.bottomAnchor, constant: 20).isActive = true
        applienceTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        applienceTableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        applienceTableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        applienceTableView.separatorColor = .clear
        applienceTableView.showsVerticalScrollIndicator = false
        applienceTableView.rowHeight = 300
        applienceTableView.register(ApplienceCell.self, forCellReuseIdentifier: "ApplienceCell")
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.appliences.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ApplienceCell", for: indexPath) as? ApplienceCell {
            let applience = DataService.instance.getApplience()[indexPath.row]
            cell.upDateViews(applience: applience)
            return cell
        } else { return ApplienceCell()}
        }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextScreen = ApplienceDetailVC()
        nextScreen.detailText.text = DataService.instance.getApplience()[indexPath.row].description
        nextScreen.headerTital.text = DataService.instance.getApplience()[indexPath.row].tital
        nextScreen.headerImage.image = UIImage(named: DataService.instance.getApplience()[indexPath.row].image)
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}
