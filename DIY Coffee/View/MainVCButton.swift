//
//  MainVCButton.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 22/12/2019.
//  Copyright © 2019 Thomas Pigg. All rights reserved.
//

import UIKit

class MainVCButton: UIButton {
    
    let mainImage = UIImageView()
    let titleBackground = UIView()
    let title = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(mainImage)
        addSubview(titleBackground)
        addSubview(title)
        setUpImage()
        setUpTitleBackground()
        setUpTital()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: self.frame.width, height: self.frame.height)
    }
    
    func setUpButton() {
        layer.cornerRadius = 20
        layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        layer.shadowOpacity = 70
        layer.shadowRadius = 20
        layer.masksToBounds = true
    }
    
    
    func setUpImage() {
        mainImage.contentMode = .scaleAspectFill
        mainImage.translatesAutoresizingMaskIntoConstraints = false
        mainImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        mainImage.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        mainImage.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        mainImage.layer.cornerRadius = 20
        mainImage.clipsToBounds = true
    }
    
    func setUpTitleBackground() {
        titleBackground.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7847549229)
        titleBackground.translatesAutoresizingMaskIntoConstraints = false
        titleBackground.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        titleBackground.trailingAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        titleBackground.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        titleBackground.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleBackground.layer.cornerRadius = 20
        titleBackground.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
        }
    
    func setUpTital() {
        title.textColor = .black
        title.textAlignment = .center
        title.font = UIFont(name: "Futura", size: 30)
        title.adjustsFontSizeToFitWidth = true
        title.translatesAutoresizingMaskIntoConstraints = false
        title.leadingAnchor.constraint(equalTo: titleBackground.leadingAnchor).isActive = true
        title.bottomAnchor.constraint(equalTo: titleBackground.bottomAnchor).isActive = true
        title.trailingAnchor.constraint(equalTo: titleBackground.trailingAnchor).isActive = true
        title.topAnchor.constraint(equalTo: titleBackground.topAnchor).isActive = true
    }
    
}
