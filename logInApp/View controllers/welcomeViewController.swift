//
//  welcomeViewController.swift
//  logInApp
//
//  Created by Mac on 04.09.2022.
//


import UIKit

class WelcomeViewController: UIViewController {
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
//        let gradientLayer = CAGradientLayer()
//            gradientLayer.frame = self.view.bounds
//            gradientLayer.colors = [UIColor.systemPink.cgColor, UIColor.systemOrange.cgColor]
//            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
//            gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
//            self.view.layer.insertSublayer(gradientLayer, at: 0)
//
            
            
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemOrange.cgColor,
        ]
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
            gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
            view.layer.insertSublayer(gradientLayer, at: 0)
         
    }
    
    @IBAction func logOutButtonAction() {
        dismiss(animated: true)
    }
    
     
}
