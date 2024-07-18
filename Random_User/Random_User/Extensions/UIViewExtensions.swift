//
//  UIViewExtensions.swift
//  Random_User
//
//  Created by Jervy Umandap on 7/18/24.
//

import Foundation
import UIKit


extension UIView {
    
    func round(_ radius: CGFloat = 5) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    func addBorder(_ color: UIColor, width: CGFloat) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
}
