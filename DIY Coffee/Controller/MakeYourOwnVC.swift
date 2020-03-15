//
//  MakeYourOwnVC.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 22/01/2020.
//  Copyright © 2020 Thomas Pigg. All rights reserved.
//

import UIKit

class MakeYourOwnVC: UIViewController {
    
    let logoImage = UIImage(named: "DIYCoffeeLogoDark")
    let logoImageView = UIImageView()
    let recepieButton = MainVCButton()
    let brewYourOwnButton = MainVCButton()
    let introLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
//Set up VC
        view.addSubview(introLabel)
        self.view.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9254901961, blue: 0.937254902, alpha: 1)
        logoImageView.image = logoImage
        self.navigationItem.titleView = logoImageView
        setUpIntroLabel()
    }
    
    func setUpIntroLabel() {
        introLabel.translatesAutoresizingMaskIntoConstraints = false
        introLabel.topAnchor.constraint(equalTo: (navigationController?.navigationBar.bottomAnchor)!, constant: 20).isActive = true
        introLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        introLabel.font = UIFont(name: "Futura", size: 12)
        introLabel.numberOfLines = 8
        introLabel.textAlignment = .left
        introLabel.text = "Select from pre-made recepies or create and save the best ratios for your favorite coffee grinds"
    }

}
