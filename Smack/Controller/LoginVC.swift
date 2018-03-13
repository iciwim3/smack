//
//  LoginVC.swift
//  Smack
//
//  Created by Sain-R Edwards Jr. on 3/12/18.
//  Copyright © 2018 Appybuildmore Apps. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: CREATE_ACCOUNT, sender: nil)
    }
    
}
