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
    let person = Person.getPersonData()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let wellcomeVC = viewController as? WellcomeViewController {
                wellcomeVC.person = person
            } else if let navigationVC = viewController as? UINavigationController {
                guard let infoVC = navigationVC.topViewController as? InformationViewController else { return }
                infoVC.title = "Information About Me"
                infoVC.view.backgroundColor = .orange
                infoVC.person = person
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func logInPressed() {
        guard nameTF.text == person.registrationData.0,
              passwordTF.text == person.registrationData.1
        else {
            showAlert(
                with: "Invalid Login or Password! \n🤬",
                and: "Please, enter correct Login and Password",
                textfield: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWellcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(with: "Oops!",
                    and: "Your Username is: \(person.registrationData.0) 😜")
        : showAlert(with: "Oops!",
                    and: "Your Password is: \(person.registrationData.1) 🥳")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        nameTF.text = ""
        passwordTF.text = ""
    }
    
}

extension LoginViewController {
    private func showAlert(with title: String, and message: String, textfield: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let forgotLoginAction = UIAlertAction(title: "OK", style: .default) { _ in
            textfield?.text = ""
        }
        alert.addAction(forgotLoginAction)
        present(alert, animated: true)
    }
}


