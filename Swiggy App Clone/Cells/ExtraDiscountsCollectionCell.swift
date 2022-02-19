//
//  ExtraDiscountsCollectionCell.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 07/02/22.
//

import UIKit

class ExtraDiscountsCollectionCell: UICollectionViewCell, ReusableView {
    
    static var defaultReuseIdentifier: String = String(describing: ExtraDiscountsCollectionCell.self)

    private lazy var extraDiscountsView: CommonUIView = {
       let view = CommonUIView()
        view.addSubview(restaurantImageView)
        view.addSubview(restaurantTitleLabel)
        view.addSubview(extraDiscountStackView)
        view.addSubview(swiggyOneStackView)
        view.addSubview(freedDeliveryLabel)
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

    private lazy var extraDiscountStackView: CommonStackView = {
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

    private lazy var extraDiscountLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getRegularFont(14)
        label.textColor = .lightGray
        label.text = "Extra 20% off"
        return label
    }()

    private lazy var swiggyOneStackView: CommonStackView = {
        let stackView = CommonStackView(arrangedSubviews: [swiggyOneImageView, extraDiscountLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        return stackView
    }()

    private lazy var freedDeliveryLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getRegularFont(14)
        label.textColor = .lightGray
        label.text = "+ Free delivery"
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
        addSubview(extraDiscountsView)
        NSLayoutConstraint.activate([
            restaurantImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            restaurantImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            restaurantImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            restaurantImageView.heightAnchor.constraint(equalToConstant: 120),

            restaurantTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            restaurantTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            restaurantTitleLabel.topAnchor.constraint(equalTo: restaurantImageView.bottomAnchor, constant: 5),
            
            extraDiscountStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            extraDiscountStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            extraDiscountStackView.topAnchor.constraint(equalTo: restaurantTitleLabel.bottomAnchor, constant: 5),

            swiggyOneStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            swiggyOneStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            swiggyOneStackView.topAnchor.constraint(equalTo: extraDiscountStackView.bottomAnchor, constant: 8),

            freedDeliveryLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            freedDeliveryLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            freedDeliveryLabel.topAnchor.constraint(equalTo: swiggyOneStackView.bottomAnchor, constant: 8),

            extraDiscountsView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            extraDiscountsView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            extraDiscountsView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            extraDiscountsView.topAnchor.constraint(equalTo: topAnchor, constant: 0)
        ])
    }

    func setupExtraDiscountsData(_ data: ExtraDiscountData) {
        restaurantImageView.image = data.restaurantImage
        restaurantTitleLabel.text = data.restaurantName
        restaurantRatingAndEstimatedDeliveryeLabel.text = data.estimatedDelivery
    }
}
