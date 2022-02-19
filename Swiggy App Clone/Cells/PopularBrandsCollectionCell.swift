//
//  PopularBrandsCollectionCell.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 07/02/22.
//

import UIKit

class PopularBrandsCollectionCell: UICollectionViewCell, ReusableView {
    
    static var defaultReuseIdentifier: String = String(describing: PopularBrandsCollectionCell.self)
    private lazy var popularBrandsView: CommonUIView = {
       let view = CommonUIView()
        view.addSubview(restaurantView)
        view.addSubview(restaurantTitleLabel)
        view.addSubview(estimatedDeliveryLabel)
        return view
    }()

    private lazy var restaurantView: CommonUIView = {
       let view = CommonUIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 0.2

//        view.layer.shadowColor = UIColor.black.cgColor
//        view.layer.shadowOpacity = 0.2
//        view.layer.shadowOffset = .zero
//        view.layer.shadowRadius = 2
        view.addSubview(brandImageView)
        return view
    }()

    private lazy var restaurantTitleLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getBoldFont(16)
        label.numberOfLines = 2
        label.textAlignment = .center
        return label
    }()

    private lazy var estimatedDeliveryLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getRegularFont(14)
        label.textColor = .lightGray
        label.textAlignment = .center
        return label
    }()

    private lazy var brandImageView: UIImageView = {
       let image = UIImageView()
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
        addSubview(popularBrandsView)
        NSLayoutConstraint.activate([
            brandImageView.centerXAnchor.constraint(equalTo: restaurantView.centerXAnchor, constant: 0),
            brandImageView.centerYAnchor.constraint(equalTo: restaurantView.centerYAnchor),
            brandImageView.heightAnchor.constraint(equalToConstant: 60),
            brandImageView.widthAnchor.constraint(equalToConstant: 60),
            
            restaurantView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            restaurantView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            restaurantView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            restaurantView.heightAnchor.constraint(equalToConstant: 80),
            
            restaurantTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            restaurantTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            restaurantTitleLabel.topAnchor.constraint(equalTo: restaurantView.bottomAnchor, constant: 8),
            
            estimatedDeliveryLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            estimatedDeliveryLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            estimatedDeliveryLabel.topAnchor.constraint(equalTo: restaurantTitleLabel.bottomAnchor, constant: 5),
            
            popularBrandsView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            popularBrandsView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            popularBrandsView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            popularBrandsView.topAnchor.constraint(equalTo: topAnchor, constant: 0)
        ])
    }

    func setUpPopularBrandsData(_ data: PopularBrandsData) {
        restaurantTitleLabel.text = data.restaurantName
        estimatedDeliveryLabel.text = data.estimatedDelivery
        brandImageView.image = data.brandLogo
        
        if data.isOneBenifits! {
            
        } else {
            
        }
    }
}
