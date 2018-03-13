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
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
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
