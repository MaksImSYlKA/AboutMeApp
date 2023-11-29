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
    var greeting: String?

    // MARK: - Private Properties
    
    // MARK: - Initializers
    
    // MARK: - Overrides Methods
   
    
    // MARK: - IB Actions
    @IBAction func cancelButtonAction() {
        dismiss(animated: true)
    }
    
    // MARK: - Public Methods
    
    // MARK: - Private Methods
}



