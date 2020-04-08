//
//  PlacesVC.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 24/12/2019.
//  Copyright © 2019 Thomas Pigg. All rights reserved.
//

import UIKit

class PlacesVC: UIViewController {
    
    
    let topTitle = UILabel()
    let logoImage = UIImage(named: "DIYCoffeeLogoDark")
    let logoImageView = UIImageView()
    let addButton = UIButton()
    let sortButton = UIButton()
    let buttonStack = UIStackView()
    let placeTableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.9324248433, green: 0.9268818498, blue: 0.9366856217, alpha: 1)
        logoImageView.image = logoImage
        self.navigationItem.titleView = logoImageView
        self.navigationController?.navigationBar.isHidden = false
        view.addSubview(topTitle)
        view.addSubview(buttonStack)
        view.addSubview(placeTableView)
        setUpTopTital()
        setUpButtonStack()
        setUpTableView()
    }

    func setUpTopTital() {
        topTitle.translatesAutoresizingMaskIntoConstraints = false
        topTitle.font = UIFont(name: "Futura", size: 25)
        topTitle.text = "Your Saved Places"
        topTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        topTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        topTitle.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        topTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func setUpButtonStack() {
        buttonStack.translatesAutoresizingMaskIntoConstraints = false
        buttonStack.addArrangedSubview(addButton)
        buttonStack.addArrangedSubview(sortButton)
        buttonStack.distribution = .fillEqually
        buttonStack.alignment = .center
        buttonStack.axis = .horizontal
        buttonStack.spacing = 20
        buttonStack.topAnchor.constraint(equalTo: topTitle.bottomAnchor, constant: 20).isActive = true
        buttonStack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonStack.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
        buttonStack.heightAnchor.constraint(equalToConstant: 30).isActive = true
        setUpAddButton()
        setUpSortButton()
    }
    
    func setUpAddButton() {
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.titleLabel?.font = UIFont(name: "Futura", size: 20)
        addButton.setTitle("ADD", for: .normal)
        addButton.backgroundColor = #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
        addButton.layer.cornerRadius = 5
        addButton.setTitleColor(.white, for: .normal)
    }
    
    func setUpSortButton() {
        sortButton.translatesAutoresizingMaskIntoConstraints = false
        sortButton.titleLabel?.font = UIFont(name: "Futura", size: 20)
        sortButton.setTitle("SORT", for: .normal)
        sortButton.backgroundColor = #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
        sortButton.layer.cornerRadius = 5
        sortButton.setTitleColor(.white, for: .normal)
    }
    
    func setUpTableView() {
        placeTableView.translatesAutoresizingMaskIntoConstraints = false
        placeTableView.topAnchor.constraint(equalTo: buttonStack.bottomAnchor, constant: 15).isActive = true
        placeTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        placeTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        placeTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        placeTableView.register(PlacesCell.self, forCellReuseIdentifier: "placeCell")
        placeTableView.rowHeight = 200
    }
    
}



