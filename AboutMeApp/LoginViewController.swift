//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Максим Сылка on 28.11.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    // MARK: - Private Properties
    private let user = "User"
    private let password = "Password"
    
    // MARK: - Overrides Methods
    override func viewDidLoad() {
        userNameTF.text = user
        passwordTF.text = password
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.greeting = "Hellow, \(userNameTF.text ?? "")!"
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user, passwordTF.text == password else {
            showAlert(
                withTitle: "Error!",
                andMessage: "Input correct user name or password."
            ) {
                self.passwordTF.text = ""
            }
            return false
        }
        return true
    }
    // MARK: - IB Actions
    @IBAction func remindCredentials(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(withTitle: "Oops!", andMessage: "Your name is \(user) 😉")
            : showAlert(withTitle: "Oops!", andMessage: "Your password is \(password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: - Private Methods
    private func showAlert(withTitle title: String, andMessage message: String, completion: (() -> Void)? = nil){
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

