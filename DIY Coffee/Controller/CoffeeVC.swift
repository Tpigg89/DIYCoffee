//
//  CoffeeVC.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 22/12/2019.
//  Copyright © 2019 Thomas Pigg. All rights reserved.
//

import UIKit

class CoffeeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    let logoImage = UIImage(named: "DIYCoffeeLogoDark")
    let logoImageView = UIImageView()
    let pageHeader = UILabel()
    let coffeeTableView = UITableView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
//add subviews
        coffeeTableView.dataSource = self
        coffeeTableView.delegate = self
        view.addSubview(pageHeader)
        view.addSubview(coffeeTableView)
//set up VC
        self.view.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9254901961, blue: 0.937254902, alpha: 1)
        logoImageView.image = logoImage
        self.navigationItem.titleView = logoImageView
        self.navigationController?.navigationBar.isHidden = false
        
//set up elements
        setUpHeader()
        setUpCoffeeTableView()
    }
    
    func setUpHeader() {
        pageHeader.text = "Coffee"
        pageHeader.font = UIFont(name: "Futura", size: 30)
        pageHeader.textColor = .black
        pageHeader.translatesAutoresizingMaskIntoConstraints = false
        pageHeader.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        pageHeader.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    }
    
    func setUpCoffeeTableView() {
        coffeeTableView.backgroundColor = .clear
        coffeeTableView.translatesAutoresizingMaskIntoConstraints = false
        coffeeTableView.topAnchor.constraint(equalTo: pageHeader.bottomAnchor, constant: 20).isActive = true
        coffeeTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        coffeeTableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        coffeeTableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        coffeeTableView.register(CoffeeCell.self, forCellReuseIdentifier: "CoffeeCell")
        coffeeTableView.rowHeight = 300
        coffeeTableView.separatorColor = .clear
        coffeeTableView.showsVerticalScrollIndicator = false
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.coffees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = coffeeTableView.dequeueReusableCell(withIdentifier: "CoffeeCell", for: indexPath) as? CoffeeCell {
            let coffee = DataService.instance.getCoffee()[indexPath.row]
            cell.setUpCell(Coffee: coffee)
             return cell
        } else {
            return UITableViewCell()
        }
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextScreen = CoffeeDetailVC()
        nextScreen.headerImage.image = UIImage(named: "\(DataService.instance.getCoffee()[indexPath.row].image)")
        nextScreen.titalHeader.text = "\(DataService.instance.getCoffee()[indexPath.row].tital)"
        nextScreen.detailText.text = "\(DataService.instance.getCoffee()[indexPath.row].desciption)"
        navigationController?.pushViewController(nextScreen, animated: true)
        }
}
    
    

