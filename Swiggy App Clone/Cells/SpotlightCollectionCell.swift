//
//  SpotlightCollectionCell.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 07/02/22.
//

import UIKit

class SpotlightCollectionCell: UICollectionViewCell, ReusableView {
    
    static var defaultReuseIdentifier: String = String(describing: SpotlightCollectionCell.self)
    private lazy var spotlightCurationsView: CommonUIView = {
       let view = CommonUIView()
        view.addSubview(restaurantImageView)
        view.addSubview(restaurantTitleLabel)
        view.addSubview(spotLightStackView)
        view.addSubview(swiggyOnetStackView)
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
        label.font = UIFont.getBoldFont(16)
        return label
    }()

    private lazy var restaurantStarRatingImageView: UIImageView = {
       let image = UIImageView()
        image.layer.cornerRadius = 4
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "star.fill")?.withTintColor(.darkGray)
        image.heightAnchor.constraint(equalToConstant: 15).isActive = true
        image.widthAnchor.constraint(equalToConstant: 15).isActive = true
        return image
    }()

    private lazy var restaurantRatingAndEstimatedDeliveryeLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getRegularFont(14)
        label.textColor = .lightGray
        return label
    }()

    private lazy var spotLightStackView: CommonStackView = {
        let stackView = CommonStackView(arrangedSubviews: [restaurantStarRatingImageView, restaurantRatingAndEstimatedDeliveryeLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        return stackView
    }()

    private lazy var swiggyOneImageView: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "SwiggyOne")
        image.heightAnchor.constraint(equalToConstant: 12).isActive = true
        image.widthAnchor.constraint(equalToConstant: 35).isActive = true
        return image
    }()

    private lazy var freedDeliveryLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getRegularFont(14)
        label.textColor = .lightGray
        label.text = "Free delivery"
        return label
    }()

    private lazy var swiggyOnetStackView: CommonStackView = {
        let stackView = CommonStackView(arrangedSubviews: [swiggyOneImageView, freedDeliveryLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        return stackView
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
        addSubview(spotlightCurationsView)
        NSLayoutConstraint.activate([
            restaurantImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            restaurantImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            restaurantImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            restaurantImageView.heightAnchor.constraint(equalToConstant: 120),

            restaurantTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            restaurantTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            restaurantTitleLabel.topAnchor.constraint(equalTo: restaurantImageView.bottomAnchor, constant: 5),
            
            spotLightStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            spotLightStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            spotLightStackView.topAnchor.constraint(equalTo: restaurantTitleLabel.bottomAnchor, constant: 5),

            swiggyOnetStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            swiggyOnetStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            swiggyOnetStackView.topAnchor.constraint(equalTo: spotLightStackView.bottomAnchor, constant: 8),

            spotlightCurationsView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            spotlightCurationsView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            spotlightCurationsView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            spotlightCurationsView.topAnchor.constraint(equalTo: topAnchor, constant: 0)
        ])
    }
    
    func setupDisplaySpotlightData(_ data: SpotlightData) {
        restaurantImageView.image = data.restaurantImage
        restaurantTitleLabel.text = data.restaurantName
        restaurantRatingAndEstimatedDeliveryeLabel.text = data.estimatedDelivery
        
        if !data.isSwiggyOne! {
            swiggyOnetStackView.isHidden = true
        } else {
            swiggyOnetStackView.isHidden = false
        }
    }
}
