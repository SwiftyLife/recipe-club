//
//  MainCollectionViewCell.swift
//  RecipeClub
//
//  Created by Ador on 2021/07/16.
//

import UIKit

enum Constant {
    static var padding: CGFloat {
        return 10
    }
}

enum CellSize {
    static var mainCollectionViewCell: CGFloat {
        return 150
    }
}

class MainCollectionViewCell: UICollectionViewCell {
    
    var images = ["egg", "egg", "egg", "egg"]
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = .init(top: Constant.padding, left: Constant.padding,
                                    bottom: Constant.padding, right: Constant.padding)
        layout.itemSize = CGSize(width: CellSize.mainCollectionViewCell,
                                 height: CellSize.mainCollectionViewCell)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(ImageCell.self,
                                forCellWithReuseIdentifier: ImageCell.identifier)
        collectionView.backgroundColor = .systemBackground
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        collectionView.backgroundColor = .purple
        collectionView.dataSource = self
        contentView.addSubview(collectionView)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds
    }
}

extension MainCollectionViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCell.identifier,
                                                            for: indexPath) as? ImageCell else {
            fatalError()
        }
        cell.setup(images[indexPath.item])
        return cell
    }
}

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
