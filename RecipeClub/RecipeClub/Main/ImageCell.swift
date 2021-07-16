//
//  ImageCell.swift
//  RecipeClub
//
//  Created by Ador on 2021/07/16.
//

import UIKit

class ImageCell: UICollectionViewCell {
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView.frame = bounds
        addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setup(_ image: String) {
        imageView.image = UIImage(named: image)
    }
}
