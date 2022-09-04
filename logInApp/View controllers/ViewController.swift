//
//  ViewController.swift
//  logInApp
//
//  Created by Mac on 04.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotUserNameField: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    let user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    @IBAction func forgotUserFieldAction() {
        showAlert(title: "Упс-с!", message: "Ваш логин: \(user.name)")
    }
    
    @IBAction func forgotPasswordFieldAction() {
        showAlert(title: "Упс-с!", message: "Ваш пароль: \(user.password)")
    }
    
    @IBAction func logInButtonAction() {
        if userField.text != "User" {
            showAlert(title: "Ой, что то не так.", message: "Проверьте правильность ввода имени.")
        } else if passwordField.text != "Password" {
            showAlert(title: "Ой, что то не так.", message: "Проверьте Ваш пароль.")
        } 
    }
    
    
}

// MARK: - Alert Controller
extension ViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
