//
//  ChannelVC.swift
//  Smack
//
//  Created by Sain-R Edwards Jr. on 1/14/18.
//  Copyright © 2018 Appybuildmore Apps. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
