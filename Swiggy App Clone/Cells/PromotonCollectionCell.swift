//
//  PromotonCollectionCell.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 06/02/22.
//

import UIKit.UICollectionViewCell

class PromotonCollectionCell: UICollectionViewCell, ReusableView {
    
    static var defaultReuseIdentifier: String = String(describing: PromotonCollectionCell.self)
    private lazy var promotionView: CommonUIView = {
        let view = CommonUIView()
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor.separator.cgColor
        view.layer.borderWidth = 1
        view.addSubview(promotionStackView)
        view.addSubview(promotionRightImageView)
        view.addSubview(promotionArrowImageView)
        return view
    }()
    
    private lazy var promotionTitleLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getBoldFont(18)
        return label
    }()

    private lazy var promotionSubTitleLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getRegularFont(13)
        label.numberOfLines = 3
        label.textColor = .lightGray
        return label
    }()

    private lazy var promotionStackView: CommonStackView = {
        let stack = CommonStackView(arrangedSubviews: [promotionTitleLabel, promotionSubTitleLabel])
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 2
        return stack
    }()

    private lazy var promotionArrowImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "arrow.right")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.heightAnchor.constraint(equalToConstant: 18).isActive = true
        image.widthAnchor.constraint(equalToConstant: 20).isActive = true
        return image
    }()

    private lazy var promotionRightImageView: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
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
        addSubview(promotionView)
        NSLayoutConstraint.activate([
            promotionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            promotionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            promotionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            promotionView.topAnchor.constraint(equalTo: topAnchor, constant: 0),

            promotionRightImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            promotionRightImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            promotionRightImageView.widthAnchor.constraint(equalToConstant: 150/1.5),
            promotionRightImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20),

            promotionStackView.leadingAnchor.constraint(equalTo: promotionView.leadingAnchor, constant: 12),
            promotionStackView.trailingAnchor.constraint(equalTo: promotionRightImageView.trailingAnchor, constant: -20),
            promotionStackView.bottomAnchor.constraint(equalTo: promotionArrowImageView.topAnchor, constant: -8),
            promotionStackView.topAnchor.constraint(equalTo: promotionView.topAnchor, constant: 18),

            promotionArrowImageView.leadingAnchor.constraint(equalTo: promotionView.leadingAnchor, constant: 12),
            promotionArrowImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
        ])
    }
    
    func displayPromotionData(_ data: PromotionData) {
        promotionTitleLabel.text = data.title
        promotionSubTitleLabel.text = data.description
        promotionRightImageView.image = data.image
    }
}
