//
//  CouponsCollectionCell.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 07/02/22.
//

import UIKit

class CouponsCollectionCell: UICollectionViewCell, ReusableView {
    
    static var defaultReuseIdentifier: String = String(describing: CouponsCollectionCell.self)
    private lazy var couponImageView: UIImageView = {
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
        addSubview(couponImageView)
        NSLayoutConstraint.activate([
            couponImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            couponImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            couponImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            couponImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0)
        ])
    }
    
    func displayCouponsData(_ data: CouponsData) {
        couponImageView.image = data.image
    }
}
