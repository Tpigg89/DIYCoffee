//
//  MainVC.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 21/12/2019.
//  Copyright © 2019 Thomas Pigg. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
//init view elements
    let logoImage = UIImageView()
    let coffeeButton = MainVCButton()
    let applienceButton = MainVCButton()
    let placeButton = MainVCButton()
    let scrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.9324248433, green: 0.9268818498, blue: 0.9366856217, alpha: 1)
        
//add scrollView
        view.addSubview(scrollView)
//setting scrollView
        setUpScrollView()
        }

//set up scrollView
    func setUpScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize.height = 1270
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.backgroundColor = .clear
        scrollView.isScrollEnabled = true
        scrollView.alwaysBounceVertical = true
//add subviews
        scrollView.addSubview(logoImage)
        scrollView.addSubview(coffeeButton)
        scrollView.addSubview(applienceButton)
        scrollView.addSubview(placeButton)
//set up subviews
        setUpLogo()
        setUpCoffeeButton()
        setUpApplienceButton()
        setUpPlacesButton()
    }
    
//set up logo for top of view with constraints
    func setUpLogo() {
        logoImage.image = UIImage(named: "DIYCoffeeLogoDark")
        logoImage.contentMode = .scaleAspectFit
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 50).isActive = true
        logoImage.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: view.frame.width / 2).isActive = true
    }
    
    
//set up first button
    func setUpCoffeeButton() {
       coffeeButton.mainImage.image = UIImage(named: "CoffeebuttonImage")
       coffeeButton.title.text = "Coffee"
        coffeeButton.translatesAutoresizingMaskIntoConstraints = false
        coffeeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        coffeeButton.widthAnchor.constraint(equalToConstant: view.frame.width - 50).isActive = true
        coffeeButton.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 40).isActive = true
        coffeeButton.heightAnchor.constraint(equalToConstant: 250).isActive = true
        coffeeButton.addTarget(self, action: #selector(toCoffeeVC), for: .touchUpInside)
    }
//set up second button
    func setUpApplienceButton() {
        applienceButton.mainImage.image = UIImage(named: "CoffeeApplienceButton")
        applienceButton.title.text = "Appliences"
        applienceButton.translatesAutoresizingMaskIntoConstraints = false
        applienceButton.topAnchor.constraint(equalTo: coffeeButton.bottomAnchor, constant: 20).isActive = true
        applienceButton.heightAnchor.constraint(equalToConstant: 250).isActive = true
        applienceButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        applienceButton.widthAnchor.constraint(equalToConstant: view.frame.width - 50).isActive = true
        applienceButton.addTarget(self, action: #selector(toApplienceVC), for: .touchUpInside)
        }
    
    
//set up third button
    func setUpPlacesButton() {
        placeButton.mainImage.image = UIImage(named: "CoffeePlaceButton")
        placeButton.title.text = "Places"
        placeButton.translatesAutoresizingMaskIntoConstraints = false
        placeButton.topAnchor.constraint(equalTo: applienceButton.bottomAnchor, constant: 20).isActive = true
        placeButton.heightAnchor.constraint(equalToConstant: 250).isActive = true
        placeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        placeButton.widthAnchor.constraint(equalToConstant: view.frame.width - 50).isActive = true
        placeButton.addTarget(self, action: #selector(toPlaceVC), for: .touchUpInside)
        }
//set up fourth button

    
    
//set up button actions
    @objc func toCoffeeVC() {
        let nextScreen = CoffeeVC()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    @objc func toApplienceVC() {
        let nextScreen = ApplienceVC()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    @objc func toPlaceVC() {
       let nextScreen = PlacesVC()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
}

