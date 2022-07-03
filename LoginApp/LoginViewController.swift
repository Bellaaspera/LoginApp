//
//  ViewController.swift
//  LoginApp
//
//  Created by Светлана Сенаторова on 02.07.2022.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var forgotLoginButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    let userName = "User"
    let password = "Password"
    let emogi = "\u{1F496}"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let wellcomeVC = segue.destination as? WellcomeViewController else { return }
            wellcomeVC.textForLabel = nameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
        super .touchesBegan(touches, with: event)
    }

    @IBAction func logInPressed() {
        guard let inputText = nameTF.text, !inputText.isEmpty && nameTF.text == userName else {
            showAlert(with: "Invalid Login or Password!", and: "Please, enter correct Login and Password")
            return
        }
        guard let inputText = passwordTF.text, !inputText.isEmpty && passwordTF.text == password else {
            showAlert(with: "Invalid Login or Password!", and: "Please, enter correct Login and Password")
            return
        }
    }
    
    @IBAction func forgotLoginTapped() {
        showAlert(with: "Oops!", and: "Your Login is: \(userName) \(emogi)")
    }
    
    @IBAction func forgotPasswordTapped() {
        showAlert(with: "Oops!", and: "Your Password is: \(password) \(emogi)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let wellcomeVC = segue.source as? WellcomeViewController else { return }
        nameTF.text = wellcomeVC.textForLabel
        passwordTF.text = wellcomeVC.textForLabel
    }

}

extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let forgotLoginAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(forgotLoginAction)
        present(alert, animated: true)
    }
}

