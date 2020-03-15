//
//  CoffeeCell.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 25/12/2019.
//  Copyright © 2019 Thomas Pigg. All rights reserved.
//

import UIKit

class CoffeeCell: UITableViewCell {
    
    let cellImage = UIImageView()
    let cellTitalBackground = UIView()
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
        self.layer.cornerRadius = 20
        self.addSubview(cellImage)
        self.addSubview(cellTitalBackground)
        self.addSubview(cellTital)
        setUpCellImage()
        setUpCellTitalBackground()
        setUpCellTital()
    }

    
    func setUpCell(Coffee: Coffee) {
        self.cellImage.image = UIImage(named: Coffee.image)
        self.cellTital.text = Coffee.tital
    
    }
    func setUpCellImage() {
        cellImage.contentMode = .scaleAspectFill
        cellImage.translatesAutoresizingMaskIntoConstraints = false
        cellImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        cellImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        cellImage.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        cellImage.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        cellImage.layer.cornerRadius = 20
        cellImage.clipsToBounds = true
    }
    
    func setUpCellTitalBackground() {
        cellTitalBackground.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7847549229)
        cellTitalBackground.translatesAutoresizingMaskIntoConstraints = false
        cellTitalBackground.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        cellTitalBackground.trailingAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        cellTitalBackground.bottomAnchor.constraint(equalTo: cellImage.bottomAnchor).isActive = true
        cellTitalBackground.heightAnchor.constraint(equalToConstant: 40).isActive = true
        cellTitalBackground.layer.cornerRadius = 20
        cellTitalBackground.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
    }
    
    func setUpCellTital() {
        cellTital.textColor = .black
        cellTital.textAlignment = .center
        cellTital.font = UIFont(name: "Futura", size: 30)
        cellTital.adjustsFontSizeToFitWidth = true
        cellTital.translatesAutoresizingMaskIntoConstraints = false
        cellTital.leadingAnchor.constraint(equalTo: cellTitalBackground.leadingAnchor).isActive = true
        cellTital.bottomAnchor.constraint(equalTo: cellTitalBackground.bottomAnchor).isActive = true
        cellTital.trailingAnchor.constraint(equalTo: cellTitalBackground.trailingAnchor).isActive = true
        cellTital.topAnchor.constraint(equalTo: cellTitalBackground.topAnchor).isActive = true
    }
}
