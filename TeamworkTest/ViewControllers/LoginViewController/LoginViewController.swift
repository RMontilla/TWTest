//
//  ViewController.swift
//  TeamworkTest
//
//  Created by Rafael Montilla on 5/24/18.
//  Copyright © 2018 Teamwork. All rights reserved.
//

import UIKit
import SVProgressHUD

class LoginViewController: BaseViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    

// MARK: IBOutlet Actions
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        let email = emailTextField.text
        let password = passwordTextField.text
        
        performSegue(withIdentifier: "dashboardSegue", sender: nil)
        
    }
    
}

