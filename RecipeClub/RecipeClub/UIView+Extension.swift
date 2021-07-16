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
