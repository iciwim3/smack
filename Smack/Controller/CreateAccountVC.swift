//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Sain-R Edwards Jr. on 3/12/18.
//  Copyright © 2018 Appybuildmore Apps. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeCreateAcctBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

}
