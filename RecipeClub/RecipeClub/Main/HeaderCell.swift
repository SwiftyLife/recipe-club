//
//  HeaderCell.swift
//  RecipeClub
//
//  Created by Ador on 2021/07/16.
//

import UIKit

class HeaderCell: UICollectionViewCell {
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.text = "Today's Recipe!"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        titleLabel.frame = CGRect(x: Constant.padding, y: 0,
                                  width: width - (Constant.padding * 2), height: frame.height)
        addSubview(titleLabel)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
