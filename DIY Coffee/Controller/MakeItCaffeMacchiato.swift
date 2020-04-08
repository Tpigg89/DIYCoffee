//
//  MakeItCaffeMacchiato.swift
//  DIY Coffee
//
//  Created by Thomas Pigg on 30/03/2020.
//  Copyright © 2020 Thomas Pigg. All rights reserved.
//

import UIKit

class MakeItCaffeMacchiato: UIViewController {

    let scrollView = UIScrollView()
    let topImage = UIImageView()
    let topTitle = UILabel()
    let introText = UILabel()
    let stepOneText = UILabel()
    let stepOneImage = UIImageView()
    let stepTwoText = UILabel()
    let stepTwoImage = UIImageView()
    let stepThreeText = UILabel()
    let stepFourText = UILabel()
    let stepFourImage = UIImageView()
    let finishLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        setUpView()
        setUpScrollView()
        setUpTopImage()
        setUpTopTitle()
        setUpIntroText()
        setUpStepOneText()
        setUpStepOneImage()
        setUpStepTwoText()
        setUpStepTwoImage()
        setUpStepThreeText()
        setUpStepFourText()
        setUpStepFourImage()
        setUpFinishLabel()
    }
    
        func setUpView() {
            view.backgroundColor = #colorLiteral(red: 0.9324248433, green: 0.9268818498, blue: 0.9366856217, alpha: 1)
            self.navigationItem.titleView = UIImageView(image: UIImage(named: "DIYCoffeeLogoDark"))
            self.navigationController?.navigationBar.isHidden = false
    //add subviews
            
        }
       
    func setUpScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.contentSize.height = 1000
        scrollView.addSubview(topImage)
        scrollView.addSubview(topTitle)
        scrollView.addSubview(introText)
        scrollView.addSubview(stepOneText)
        scrollView.addSubview(stepOneImage)
        scrollView.addSubview(stepTwoText)
        scrollView.addSubview(stepTwoImage)
        scrollView.addSubview(stepThreeText)
        scrollView.addSubview(stepFourText)
        scrollView.addSubview(stepFourImage)
        scrollView.addSubview(finishLabel)
        }
    
        func setUpTopImage() {
            topImage.translatesAutoresizingMaskIntoConstraints = false
            topImage.contentMode = .scaleAspectFill
            topImage.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 25).isActive = true
            topImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            topImage.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            topImage.heightAnchor.constraint(equalToConstant: 300).isActive = true
            topImage.image = UIImage(named: "Macchiato")
            topImage.clipsToBounds = true
            }

        func setUpTopTitle() {
            topTitle.translatesAutoresizingMaskIntoConstraints = false
            topTitle.topAnchor.constraint(equalTo: topImage.bottomAnchor, constant: 15).isActive = true
            topTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
            topTitle.widthAnchor.constraint(equalToConstant: view.frame.width/2).isActive = true
            topTitle.textAlignment = .left
            topTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
            topTitle.text = "Macchiato"
            topTitle.font = UIFont(name: "Futura", size: 30)
        }
    
    func setUpIntroText() {
           introText.translatesAutoresizingMaskIntoConstraints = false
           introText.topAnchor.constraint(equalTo: topTitle.bottomAnchor, constant: 30).isActive = true
           introText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
           introText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
           introText.font = UIFont(name: "Futura", size: 15)
           introText.lineBreakMode = .byWordWrapping
           introText.numberOfLines = 3
           introText.text = "A mix of two extremes, an espresso topped with milk foam, you will need an espresso machine and milk frother"
           }
       
       func setUpStepOneText() {
            stepOneText.translatesAutoresizingMaskIntoConstraints = false
            stepOneText.font = UIFont(name: "Futura", size: 14)
            stepOneText.topAnchor.constraint(equalTo: introText.bottomAnchor, constant: 30).isActive = true
            stepOneText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
            stepOneText.widthAnchor.constraint(equalToConstant: view.frame.width - (view.frame.width/3)).isActive = true
            stepOneText.textAlignment = .left
            stepOneText.numberOfLines = 3
            stepOneText.text = "Warm up your cup with some boiling water, let it sit in there for at least 30 seconds"
            }
        
        func setUpStepOneImage() {
            stepOneImage.translatesAutoresizingMaskIntoConstraints = false
            stepOneImage.image = UIImage(named: "Water")
            stepOneImage.contentMode = .scaleAspectFit
            stepOneImage.widthAnchor.constraint(equalToConstant: 75).isActive = true
            stepOneImage.heightAnchor.constraint(equalToConstant: 75).isActive = true
            stepOneImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
            stepOneImage.centerYAnchor.constraint(equalTo: stepOneText.centerYAnchor).isActive = true
        }
    
         func setUpStepTwoText() {
             stepTwoText.translatesAutoresizingMaskIntoConstraints = false
             stepTwoText.font = UIFont(name: "Futura", size: 14)
             stepTwoText.topAnchor.constraint(equalTo: stepOneText.bottomAnchor, constant: 40).isActive = true
             stepTwoText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
             stepTwoText.widthAnchor.constraint(equalToConstant: view.frame.width - (view.frame.width/3)).isActive = true
             stepTwoText.textAlignment = .left
             stepTwoText.numberOfLines = 4
             stepTwoText.text = "Empty the cup and either using a pod or coffee grinds get your machine and brew your (40 ml / 1.3 fl oz) espresso stright into the cup"
         }
         
         func setUpStepTwoImage() {
             stepTwoImage.translatesAutoresizingMaskIntoConstraints = false
             stepTwoImage.contentMode = .scaleAspectFit
             stepTwoImage.image = UIImage(named: "Espresso-1")
             stepTwoImage.widthAnchor.constraint(equalToConstant: 75).isActive = true
             stepTwoImage.heightAnchor.constraint(equalToConstant: 75).isActive = true
             stepTwoImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
             stepTwoImage.centerYAnchor.constraint(equalTo: stepTwoText.centerYAnchor).isActive = true
         }
        
        func setUpStepThreeText() {
            stepThreeText.translatesAutoresizingMaskIntoConstraints = false
            stepThreeText.font = UIFont(name: "Futura", size: 14)
            stepThreeText.topAnchor.constraint(equalTo: stepTwoText.bottomAnchor, constant: 40).isActive = true
            stepThreeText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
            stepThreeText.widthAnchor.constraint(equalToConstant: view.frame.width - (view.frame.width/3)).isActive = true
            stepThreeText.textAlignment = .left
            stepThreeText.numberOfLines = 4
            stepThreeText.text = "Froth up your milk into a nice foam"
        }
        
        func setUpStepFourText() {
            stepFourText.translatesAutoresizingMaskIntoConstraints = false
            stepFourText.font = UIFont(name: "Futura", size: 14)
            stepFourText.topAnchor.constraint(equalTo: stepThreeText.bottomAnchor, constant: 40).isActive = true
            stepFourText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
            stepFourText.widthAnchor.constraint(equalToConstant: view.frame.width - (view.frame.width/3)).isActive = true
            stepFourText.textAlignment = .left
            stepFourText.numberOfLines = 3
            stepFourText.text = "Spoon your foam onto your espresso. For a milder taste add more foamed milk"
        }

        func setUpStepFourImage() {
            stepFourImage.translatesAutoresizingMaskIntoConstraints = false
            stepFourImage.contentMode = .scaleAspectFit
            stepFourImage.image = UIImage(named: "flat white")
            stepFourImage.widthAnchor.constraint(equalToConstant: 75).isActive = true
            stepFourImage.heightAnchor.constraint(equalToConstant: 75).isActive = true
            stepFourImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
            stepFourImage.centerYAnchor.constraint(equalTo: stepFourText.centerYAnchor).isActive = true
        }
        
        func setUpFinishLabel() {
            finishLabel.translatesAutoresizingMaskIntoConstraints = false
            finishLabel.text = "Well done now just relax and enjoy!"
            finishLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            finishLabel.topAnchor.constraint(equalTo: stepFourText.bottomAnchor, constant: 50).isActive = true
            finishLabel.widthAnchor.constraint(equalToConstant: view.frame.width - 60).isActive = true
            finishLabel.numberOfLines = 2
            finishLabel.font = UIFont(name: "Futura", size: 25)
            finishLabel.textAlignment = .center
        }
    
    
}
