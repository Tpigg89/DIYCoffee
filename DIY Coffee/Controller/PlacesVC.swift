//
//  PlacesVC.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 24/12/2019.
//  Copyright © 2019 Thomas Pigg. All rights reserved.
//

import UIKit

class PlacesVC: UIViewController {

    let logoImage = UIImage(named: "DIYCoffeeLogoDark")
    let logoImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.9324248433, green: 0.9268818498, blue: 0.9366856217, alpha: 1)
        logoImageView.image = logoImage
        self.navigationItem.titleView = logoImageView
        self.navigationController?.navigationBar.isHidden = false
    }

}




