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
    private let userName = "Maks"
    private let password = "234"
    
    // MARK: - Overrides Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == userName, passwordTF.text == password else {
            showAlert(
                withTitle: "Ошибка!",
                andMessage: "Введите корректное имя пользователя или пароль."
            )
            return false
        }
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.greeting = "Hellow, \(userNameTF.text ?? "")!"
    }
    
    // MARK: - IB Actions
    @IBAction func unwind(for segue: UIStoryboardSegue){
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: - Private Methods
    private func showAlert(withTitle title: String, andMessage message: String){
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTF.text = ""
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

