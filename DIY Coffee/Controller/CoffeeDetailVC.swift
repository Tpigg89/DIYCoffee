//
//  CoffeeDetailVC.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 27/12/2019.
//  Copyright © 2019 Thomas Pigg. All rights reserved.
//

import UIKit

class CoffeeDetailVC: UIViewController {
    
    let headerImage = UIImageView()
    let titalHeader = UILabel()
    let detailText = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(headerImage)
        view.addSubview(titalHeader)
        view.addSubview(detailText)
        setUpView()
        setUpHeaderImage()
        setUpTital()
        setUpDescriptionText()
        // Do any additional setup after loading the view.
    }

    func setUpView() {
        view.backgroundColor = #colorLiteral(red: 0.9324248433, green: 0.9268818498, blue: 0.9366856217, alpha: 1)
        self.navigationItem.titleView = UIImageView(image: UIImage(named: "DIYCoffeeLogoDark"))
        self.navigationController?.navigationBar.isHidden = false
    }


//set up header image inside scroll view
    func setUpHeaderImage() {
        headerImage.translatesAutoresizingMaskIntoConstraints = false
        headerImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        headerImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        headerImage.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        headerImage.heightAnchor.constraint(equalToConstant: 250).isActive = true
        headerImage.contentMode = .scaleAspectFill
        headerImage.clipsToBounds = true
    }
//set header tital inside scroll view
    func setUpTital() {
        titalHeader.translatesAutoresizingMaskIntoConstraints = false
        titalHeader.font = UIFont(name: "Futura", size: 30)
        titalHeader.textColor = .black
        titalHeader.textAlignment = .center
        titalHeader.topAnchor.constraint(equalTo: headerImage.bottomAnchor, constant: 20).isActive = true
        titalHeader.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        titalHeader.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
    }
//set textfield for details on coffee
    func setUpDescriptionText() {
        detailText.translatesAutoresizingMaskIntoConstraints = false
        detailText.textColor = .black
        detailText.textAlignment = .left
        detailText.font = UIFont(name: "Futura", size: 15)
        detailText.topAnchor.constraint(equalTo: titalHeader.bottomAnchor, constant: 30).isActive = true
        detailText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        detailText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        detailText.numberOfLines = 40
        detailText.lineBreakMode = .byWordWrapping
    }

}
