//
//  UIView+Extension.swift
//  RecipeClub
//
//  Created by Ador on 2021/07/16.
//

import UIKit

extension UIView {
    static var identifier: String {
        return String(describing: self)
    }
    
    var width: CGFloat {
        return frame.width
    }
    
    static func loadFromNib<T>() -> T {
        let name = String(describing: self)
        guard let view = Bundle.main.loadNibNamed(name, owner: nil, options: nil)?.first as? T else {
            fatalError()
        }
        return view
    }
}

//MARK: - Doyeona
extension UIView {
    
    func makeSpecificCornerRounded(cornerRadius: CGFloat, maskedCorners: CACornerMask) {
        clipsToBounds = true
        layer.cornerRadius = cornerRadius
        layer.maskedCorners = CACornerMask(arrayLiteral: maskedCorners)
    }
    
    func setCornerRadius(radius: CGFloat) {
         self.layer.cornerRadius = radius
     }
    
    func makeCircular() {
        self.layer.cornerRadius =  self.frame.size.width / 2.5
          self.clipsToBounds = true
      }
}
