//
//  OfferCollectionCell.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 06/02/22.
//

import UIKit.UICollectionViewCell

class OfferCollectionCell: UICollectionViewCell, ReusableView {
    
    static var defaultReuseIdentifier: String = String(describing: OfferCollectionCell.self)

    private lazy var offerImageView: UIImageView = {
       let image = UIImageView()
        image.layer.cornerRadius = 15
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
        addSubview(offerImageView)
        NSLayoutConstraint.activate([
            offerImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            offerImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            offerImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            offerImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0)
        ])
    }
    
    func displayOfferData(_ data: OffernData) {
        offerImageView.image = data.image
    }
}
