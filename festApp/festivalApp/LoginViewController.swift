//
//  LoginViewController.swift
//  festivalApp
//
//  Created by agemperline on 10/16/19.
//  Copyright © 2019 agemperline. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var usernmeField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        
        navigateToMainInterface()
    }
    
    private func navigateToMainInterface() {
        
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let mainNavigationVC = mainStoryBoard.instantiateViewController(withIdentifier: "MainNavigationController") as? MainNavigationController else {
            return
        }
        
        present(mainNavigationVC, animated: true, completion:  nil)
    }
    
}
