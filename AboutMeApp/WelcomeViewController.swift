//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Максим Сылка on 28.11.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var welcomeUserLabel: UILabel!
    
    // MARK: - Public Properties
var greeting = "Hellow, User!"
    
    // MARK: - Overrides Methods
    override func viewDidLoad() {
        welcomeUserLabel.text = greeting
    }

}



