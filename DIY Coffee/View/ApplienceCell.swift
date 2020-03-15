//
//  ApplienceCell.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 10/01/2020.
//  Copyright © 2020 Thomas Pigg. All rights reserved.
//

import UIKit

class ApplienceCell: UITableViewCell {
    
    let cellImage = UIImageView()
    let cellTitalBackGround = UIView()
    let cellTital = UILabel()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    func setUpView() {
        self.backgroundColor = .clear
        self.addSubview(cellImage)
        self.addSubview(cellTitalBackGround)
        self.addSubview(cellTital)
        setUpImage()
        setUpBackgroundOfTital()
        setUpTital()
    }
    
    func upDateViews(applience: Applience) {
        self.cellImage.image = UIImage(named: applience.image)
        self.cellTital.text = applience.tital
    }
    
    
    func setUpImage() {
        cellImage.contentMode = .scaleAspectFill
        cellImage.translatesAutoresizingMaskIntoConstraints = false
        cellImage.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        cellImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        cellImage.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        cellImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        cellImage.clipsToBounds = true
        cellImage.layer.cornerRadius = 20
    }
    
    
    func setUpBackgroundOfTital() {
        cellTitalBackGround.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7847549229)
        cellTitalBackGround.translatesAutoresizingMaskIntoConstraints = false
        cellTitalBackGround.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        cellTitalBackGround.trailingAnchor.constraint(equalTo: self.centerXAnchor, constant: 10).isActive = true
        cellTitalBackGround.bottomAnchor.constraint(equalTo: cellImage.bottomAnchor).isActive = true
        cellTitalBackGround.heightAnchor.constraint(equalToConstant: 40).isActive = true
        cellTitalBackGround.layer.cornerRadius = 20
        cellTitalBackGround.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
        
    }
    
    func setUpTital() {
        cellTital.textColor = .black
        cellTital.textAlignment = .center
        cellTital.font = UIFont(name: "Futura", size: 30)
        cellTital.adjustsFontSizeToFitWidth = true
        cellTital.translatesAutoresizingMaskIntoConstraints = false
        cellTital.leadingAnchor.constraint(equalTo: cellTitalBackGround.leadingAnchor).isActive = true
        cellTital.bottomAnchor.constraint(equalTo: cellTitalBackGround.bottomAnchor).isActive = true
        cellTital.trailingAnchor.constraint(equalTo: cellTitalBackGround.trailingAnchor).isActive = true
        cellTital.topAnchor.constraint(equalTo: cellTitalBackGround.topAnchor).isActive = true
        
    }
    
    
    
    
    
}
