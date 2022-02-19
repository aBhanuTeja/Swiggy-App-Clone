//
//  RestaurantsNearByCollectionCell.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 07/02/22.
//

import UIKit

class RestaurantsNearByCollectionCell: UICollectionViewCell, ReusableView {
    
    static var defaultReuseIdentifier: String = String(describing: RestaurantsNearByCollectionCell.self)
    private lazy var restaurantsNearByView: CommonUIView = {
        let view = CommonUIView()
        view.addSubview(restaurantImageView)
        view.addSubview(restaurantTitleLabel)
        view.addSubview(ratingETAPriceStackView)
        view.addSubview(cusineLabel)
        view.addSubview(locationLabel)
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

    private lazy var restaurantRatingAndEstimatedDeliveryLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getBoldFont(14)
        label.textColor = .lightGray
        return label
    }()

    private lazy var ratingETAPriceStackView: CommonStackView = {
        let stackView = CommonStackView(arrangedSubviews: [restaurantStarRatingImageView, restaurantRatingAndEstimatedDeliveryLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        return stackView
    }()

    private lazy var cusineLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getRegularFont(14)
        label.textColor = .lightGray
        return label
    }()

    private lazy var locationLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getRegularFont(14)
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
        addSubview(restaurantsNearByView)
        NSLayoutConstraint.activate([
            restaurantImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            restaurantImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            restaurantImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            restaurantImageView.widthAnchor.constraint(equalToConstant: 100),
            
            restaurantTitleLabel.leadingAnchor.constraint(equalTo: restaurantImageView.trailingAnchor, constant: 8),
            restaurantTitleLabel.trailingAnchor.constraint(equalTo: restaurantsNearByView.trailingAnchor, constant: -8),
            restaurantTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),

            ratingETAPriceStackView.leadingAnchor.constraint(equalTo: restaurantImageView.trailingAnchor, constant: 8),
            ratingETAPriceStackView.topAnchor.constraint(equalTo: restaurantTitleLabel.bottomAnchor, constant: 8),
            ratingETAPriceStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),

            cusineLabel.leadingAnchor.constraint(equalTo: restaurantImageView.trailingAnchor, constant: 8),
            cusineLabel.topAnchor.constraint(equalTo: ratingETAPriceStackView.bottomAnchor, constant: 8),
            cusineLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),

            locationLabel.leadingAnchor.constraint(equalTo: restaurantImageView.trailingAnchor, constant: 8),
            locationLabel.topAnchor.constraint(equalTo: cusineLabel.bottomAnchor, constant: 8),
            locationLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            
            restaurantsNearByView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            restaurantsNearByView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            restaurantsNearByView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            restaurantsNearByView.topAnchor.constraint(equalTo: topAnchor, constant: 0)
        ])
    }
    
    func setupRestaurantsNearByData(_ data: RestuarantsNearByData) {
        restaurantImageView.image = data.restaurantImage
        restaurantTitleLabel.text = data.restaurantName
        restaurantRatingAndEstimatedDeliveryLabel.text = data.ratingETAPrice
        cusineLabel.text = data.cuisine
        locationLabel.text = data.location
    }
}
