//
//  MainHeaderCollectionReusableView.swift
//  RecipeClub
//
//  Created by Ador on 2021/07/16.
//

import UIKit

class MainHeaderCollectionReusableView: UICollectionReusableView {
    private let imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "egg"))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
    }
}
