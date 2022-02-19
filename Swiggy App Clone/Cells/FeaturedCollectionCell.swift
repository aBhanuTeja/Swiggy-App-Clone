//
//  FeaturedCollectionCell.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 07/02/22.
//

import UIKit

class FeaturedCollectionCell: UICollectionViewCell, ReusableView {
    
    static var defaultReuseIdentifier: String = String(describing: FeaturedCollectionCell.self)

    private lazy var featuredImageView: UIImageView = {
       let image = UIImageView()
        image.layer.cornerRadius = 5
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        return image
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }

    private func setupViews() {
        addSubview(featuredImageView)
        NSLayoutConstraint.activate([
            featuredImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            featuredImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            featuredImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            featuredImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0)
        ])
    }
    
    func displayFeaturedData(_ data: OffernData) {
        featuredImageView.image = data.image
    }
}
