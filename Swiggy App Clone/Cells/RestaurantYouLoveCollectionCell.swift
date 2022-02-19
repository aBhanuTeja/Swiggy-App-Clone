//
//  RestaurantYouLoveCollectionCell.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 07/02/22.
//

import UIKit.UICollectionViewCell

class RestaurantYouLoveCollectionCell: UICollectionViewCell, ReusableView {
    
    static var defaultReuseIdentifier: String = String(describing: RestaurantYouLoveCollectionCell.self)
    private lazy var restaurantYouLoveView: CommonUIView = {
       let view = CommonUIView()
        view.addSubview(restaurantImageView)
        view.addSubview(restaurantTitleLabel)
        view.addSubview(estimatedDeliveryLabel)
        return view
    }()

    private lazy var restaurantImageView: UIImageView = {
       let image = UIImageView()
        image.layer.cornerRadius = 4
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        return image
    }()

    private lazy var restaurantTitleLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getRegularFont(14)
        label.numberOfLines = 2
        return label
    }()

    private lazy var estimatedDeliveryLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getRegularFont(12)
        label.textColor = .lightGray
        return label
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
        addSubview(restaurantYouLoveView)
        NSLayoutConstraint.activate([
            restaurantImageView.leadingAnchor.constraint(equalTo: restaurantYouLoveView.leadingAnchor, constant: 0),
            restaurantImageView.trailingAnchor.constraint(equalTo: restaurantYouLoveView.trailingAnchor, constant: 0),
            restaurantImageView.topAnchor.constraint(equalTo: restaurantYouLoveView.topAnchor, constant: 0),
            restaurantImageView.heightAnchor.constraint(equalToConstant: 85),

            restaurantTitleLabel.leadingAnchor.constraint(equalTo: restaurantYouLoveView.leadingAnchor, constant: 0),
            restaurantTitleLabel.trailingAnchor.constraint(equalTo: restaurantYouLoveView.trailingAnchor, constant: 0),
            restaurantTitleLabel.topAnchor.constraint(equalTo: restaurantImageView.bottomAnchor, constant: 5),

            estimatedDeliveryLabel.leadingAnchor.constraint(equalTo: restaurantYouLoveView.leadingAnchor, constant: 0),
            estimatedDeliveryLabel.trailingAnchor.constraint(equalTo: restaurantYouLoveView.trailingAnchor, constant: 0),
            estimatedDeliveryLabel.topAnchor.constraint(equalTo: restaurantTitleLabel.bottomAnchor, constant: 5),

            restaurantYouLoveView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            restaurantYouLoveView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            restaurantYouLoveView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            restaurantYouLoveView.topAnchor.constraint(equalTo: topAnchor, constant: 0)
        ])
    }
    
    func setUpRestaurantYouLoveData(_ data: RestaurantYouLoveData) {
        restaurantImageView.image = data.restaurantImage
        restaurantTitleLabel.text = data.restaurantName
        estimatedDeliveryLabel.text = data.estimatedDelivery
    }
}
