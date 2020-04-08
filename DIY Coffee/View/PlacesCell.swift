//
//  PlacesCell.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 06/04/2020.
//  Copyright © 2020 Thomas Pigg. All rights reserved.
//

import UIKit

class PlacesCell: UITableViewCell {
    
    let backView = UIView()
    let nameLabel = UILabel()
    let detailLabel = UILabel()
    let locationLabel = UILabel()
    
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpView() {
        self.addSubview(backView)
        
    }
    
    func setUpBackground() {
        backView.backgroundColor = #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
        backView.layer.cornerRadius = 15
        backView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        backView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        backView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        backView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        backView.addSubview(nameLabel)
    }
    
    func setUpNameLabel() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont(name: "Futura", size: 30)
        nameLabel.textColor = .white
        nameLabel.topAnchor.constraint(equalTo: backView.topAnchor, constant: 15).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: backView.leftAnchor, constant: 15).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 32).isActive = true
        nameLabel.widthAnchor.constraint(equalTo: backView.widthAnchor, constant: -20).isActive = true
        }
}
