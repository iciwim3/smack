//
//  GradientView.swift
//  Smack
//
//  Created by Sain-R Edwards Jr. on 3/11/18.
//  Copyright © 2018 Appybuildmore Apps. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    /* The @IBDesignable variable allows the variables to
     change inside of the storyboard. */
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.262745098, green: 0.5725490196, blue: 0.9450980392, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.8745098039, green: 0.3490196078, blue: 0.2941176471, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    /* This function is called whenever we change
     the 'topColor' or 'bottomColor' variables. */
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }

}
