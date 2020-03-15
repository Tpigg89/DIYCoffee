//
//  ApplienceDetailVC.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 15/01/2020.
//  Copyright © 2020 Thomas Pigg. All rights reserved.
//

import UIKit

class ApplienceDetailVC: UIViewController {
    
    let logoImage = UIImage(named: "DIYCoffeeLogoDark")
    let logoImageView = UIImageView()
    let headerImage = UIImageView()
    let headerTital = UILabel()
    let detailText = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(headerImage)
        view.addSubview(headerTital)
        view.addSubview(detailText)
        setUpView()
        setUpDetailText()
        setUpHeaderImage()
        setUpHeaderTital()
    }
    
    func setUpView() {
        self.view.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9254901961, blue: 0.937254902, alpha: 1)
        logoImageView.image = logoImage
        self.navigationItem.titleView = logoImageView
        self.navigationController?.navigationBar.isHidden = false
    }

    func setUpHeaderImage() {
        headerImage.translatesAutoresizingMaskIntoConstraints = false
        headerImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        headerImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        headerImage.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        headerImage.heightAnchor.constraint(equalToConstant: 250).isActive = true
        headerImage.contentMode = .scaleAspectFill
        headerImage.clipsToBounds = true
        }
    
    func setUpHeaderTital() {
      headerTital.translatesAutoresizingMaskIntoConstraints = false
      headerTital.font = UIFont(name: "Futura", size: 30)
      headerTital.textColor = .black
      headerTital.textAlignment = .center
      headerTital.topAnchor.constraint(equalTo: headerImage.bottomAnchor, constant: 20).isActive = true
      headerTital.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
      headerTital.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
    }
    
    func setUpDetailText() {
       detailText.translatesAutoresizingMaskIntoConstraints = false
       detailText.textColor = .black
       detailText.textAlignment = .left
       detailText.font = UIFont(name: "Futura", size: 15)
       detailText.topAnchor.constraint(equalTo: headerTital.bottomAnchor, constant: 30).isActive = true
       detailText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
       detailText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
       detailText.numberOfLines = 40
       detailText.lineBreakMode = .byWordWrapping
    }
    
}
