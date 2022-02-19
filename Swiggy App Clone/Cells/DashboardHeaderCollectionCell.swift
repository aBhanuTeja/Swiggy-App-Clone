//
//  DashboardHeaderCollectionCell.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 07/02/22.
//

import UIKit.UICollectionView

class DashboardHeaderCollectionCell: UICollectionReusableView, ReusableView {
    
    static var defaultReuseIdentifier: String = String(describing: DashboardHeaderCollectionCell.self)
    private lazy var dashboardHeaderTitleLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getBoldFont(20)
        label.numberOfLines = 1
        return label
    }()

    private lazy var dashboardHeaderSubTitleLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getRegularFont(14)
        label.textColor = .lightGray
        label.numberOfLines = 1
        return label
    }()

    private lazy var dashboardHeaderStackView: CommonStackView = {
        let horizontalStack = CommonStackView(arrangedSubviews: [dashboardHeaderImageView, dashboardHeaderTitleLabel])
        horizontalStack.axis = .horizontal

        let stackView = CommonStackView(arrangedSubviews: [horizontalStack, dashboardHeaderSubTitleLabel])
        stackView.axis = .vertical
        stackView.distribution = .fill
        return stackView
    }()

    private lazy var dashboardHeaderImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        return imageView
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
        backgroundColor = .systemBackground
        addSubview(dashboardHeaderStackView)
        NSLayoutConstraint.activate([
            dashboardHeaderStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            dashboardHeaderStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            dashboardHeaderStackView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            dashboardHeaderStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
    }
    
    func setUpData(_ index: EstimateItemStatus) {
        switch index {
        case .promotion:
            break
        case .offer:
            break
        case .restaurentYouLove:
            dashboardHeaderTitleLabel.text = "Restaurants You Love"
            dashboardHeaderSubTitleLabel.text = ""
            dashboardHeaderImageView.image = UIImage(systemName: "heart.circle")
            dashboardHeaderImageView.isHidden = false
        case .popularCurations:
            dashboardHeaderTitleLabel.text = "Popular Curations"
            dashboardHeaderSubTitleLabel.text = ""
            dashboardHeaderImageView.isHidden = true
        case .spotLightBrands:
            dashboardHeaderTitleLabel.text = "In the Spotlight!"
            dashboardHeaderSubTitleLabel.text = "Explore sponsored partner brands"
            dashboardHeaderImageView.image = UIImage(systemName: "lightbulb.fill")
            dashboardHeaderImageView.isHidden = false
        case .genie:
            break
        case .featured:
            dashboardHeaderTitleLabel.text = "Today's Featured"
            dashboardHeaderSubTitleLabel.text = ""
            dashboardHeaderImageView.isHidden = true
        case .popularBrands:
            dashboardHeaderTitleLabel.text = "Popular Brands"
            dashboardHeaderSubTitleLabel.text = ""
            dashboardHeaderImageView.isHidden = true
        case .coupons:
            dashboardHeaderTitleLabel.text = "Coupons For You"
            dashboardHeaderSubTitleLabel.text = ""
            dashboardHeaderImageView.isHidden = true
        case .extraDiscounts:
            dashboardHeaderTitleLabel.text = "Extra discounts for One"
            dashboardHeaderSubTitleLabel.text = "Club with any Offer | No Max Limit"
            dashboardHeaderImageView.image = UIImage(systemName: "cart.badge.minus")
            dashboardHeaderImageView.isHidden = false
        case .restaurantsNearBy:
            dashboardHeaderTitleLabel.text = "All Restaurants Nearby"
            dashboardHeaderSubTitleLabel.text = "Discover uniques tastes near you"
            dashboardHeaderImageView.image = UIImage(systemName: "fork.knife.circle")
            dashboardHeaderImageView.isHidden = false
        }
    }
}
