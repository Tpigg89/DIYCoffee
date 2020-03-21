//
//  CoffeeDetailVC.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 27/12/2019.
//  Copyright © 2019 Thomas Pigg. All rights reserved.
//

import UIKit

class CoffeeDetailVC: UIViewController {
    
    let scrollView = UIScrollView()
    let headerImage = UIImageView()
    let titalHeader = UILabel()
    let detailText = UILabel()
    let letsMakeItButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        setUpView()
        setUpScrollView()
        setUpHeaderImage()
        setUpTital()
        setUpDescriptionText()
        setUpLetsMakeItButton()
    }

    func setUpView() {
        view.backgroundColor = #colorLiteral(red: 0.9324248433, green: 0.9268818498, blue: 0.9366856217, alpha: 1)
        self.navigationItem.titleView = UIImageView(image: UIImage(named: "DIYCoffeeLogoDark"))
        self.navigationController?.navigationBar.isHidden = false
    }

    func setUpScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .clear
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.contentSize.height = 1000
        scrollView.isScrollEnabled = true
        scrollView.addSubview(headerImage)
        scrollView.addSubview(titalHeader)
        scrollView.addSubview(detailText)
        scrollView.addSubview(letsMakeItButton)
    }
//set up header image inside scroll view
    func setUpHeaderImage() {
        headerImage.translatesAutoresizingMaskIntoConstraints = false
        headerImage.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        headerImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        headerImage.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
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
        titalHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titalHeader.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
    }
//set textfield for details on coffee
    func setUpDescriptionText() {
        detailText.translatesAutoresizingMaskIntoConstraints = false
        detailText.textColor = .black
        detailText.textAlignment = .left
        detailText.font = UIFont(name: "Futura", size: 15)
        detailText.topAnchor.constraint(equalTo: titalHeader.bottomAnchor, constant: 30).isActive = true
        detailText.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        detailText.widthAnchor.constraint(equalToConstant: view.frame.width - 30).isActive = true
        detailText.numberOfLines = 40
        detailText.lineBreakMode = .byWordWrapping
    }
    
    func setUpLetsMakeItButton() {
        letsMakeItButton.translatesAutoresizingMaskIntoConstraints = false
        letsMakeItButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        letsMakeItButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
        letsMakeItButton.widthAnchor.constraint(equalToConstant: view.frame.width - 30).isActive = true
        letsMakeItButton.topAnchor.constraint(equalTo: detailText.bottomAnchor, constant: 50).isActive = true
        letsMakeItButton.setTitle("Lets Make It", for: .normal)
        letsMakeItButton.setTitleColor(.white, for: .normal)
        letsMakeItButton.titleLabel?.font = UIFont(name: "Futura", size: 25)
        letsMakeItButton.backgroundColor = #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
        letsMakeItButton.layer.cornerRadius = 10
        letsMakeItButton.addTarget(self, action: #selector(makeItScreen), for: .touchUpInside)
        }

    @objc func makeItScreen() {
         
    }
}
