//
//  GenieCollectionCell.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 07/02/22.
//

import UIKit

class GenieCollectionCell: UICollectionViewCell, ReusableView {
    
    static var defaultReuseIdentifier: String = String(describing: GenieCollectionCell.self)
    private lazy var genieView: CommonUIView = {
       let view = CommonUIView()
        view.backgroundColor = UIColor(hexString: "C8C8DC")
        view.addSubview(useGenieLabel)
        view.addSubview(genieTitleLabel)
        view.addSubview(genieSubTitleLabel)
        view.addSubview(genieSubView)
        return view
    }()
    
    private lazy var genieTitleLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getBoldFont(38)
        label.textColor = UIColor(hexString: "444C9F")
        label.text = "Genie"
        return label
    }()

    private lazy var genieSubTitleLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getBoldFont(16)
        label.textColor = UIColor(hexString: "444C9F")
        label.text = "Pick up, Send or Buy Anything"
        return label
    }()

    private lazy var genieSubView: CommonUIView = {
       let view = CommonUIView()
        view.backgroundColor = UIColor(hexString: "A5AADC")
        view.layer.cornerRadius = 20
        view.addSubview(subGenieViewTitleLabel)
        view.addSubview(subGenieViewSubTitleTitleLabel)
        view.addSubview(deliveryBoyImageView)
        view.addSubview(arrowImageView)
        view.addSubview(termsAndConditionsLabel)
        return view
    }()

    private lazy var deliveryBoyImageView: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.image = UIImage(named: "dBoy")
        return image
    }()

    private lazy var subGenieViewTitleLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getBoldFont(32)
        label.textColor = UIColor(hexString: "444C9F")
        label.text = "Genie"
        return label
    }()

    private lazy var subGenieViewSubTitleTitleLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getBoldFont(16)
        label.textColor = UIColor(hexString: "444C9F")
        label.text = "40% off on delivery fee"
        return label
    }()

    private lazy var arrowImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "arrow.right.circle.fill")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.heightAnchor.constraint(equalToConstant: 40).isActive = true
        image.widthAnchor.constraint(equalToConstant: 40).isActive = true
        return image
    }()

    private lazy var termsAndConditionsLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getRegularFont(8)
        label.textColor = UIColor(hexString: "444C9F")
        label.text = "Applicable on orders with delivery fee above ₹35"
        return label
    }()

    private lazy var useGenieLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getBoldFont(22)
        label.textColor = .white
        label.backgroundColor = UIColor(hexString: "444C9F")
        label.text = "Use Genie For All Your Needs"
        label.textAlignment = .center
        label.layer.cornerRadius = 12
        label.layer.masksToBounds = true
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
        addSubview(genieView)
        NSLayoutConstraint.activate([
            genieTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            genieTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30),

            genieSubTitleLabel.centerYAnchor.constraint(equalTo: genieTitleLabel.centerYAnchor),
            genieSubTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),

            genieSubView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            genieSubView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            genieSubView.topAnchor.constraint(equalTo: genieSubTitleLabel.bottomAnchor, constant: 60),
            genieSubView.heightAnchor.constraint(equalToConstant: 170),

            deliveryBoyImageView.trailingAnchor.constraint(equalTo: genieSubView.trailingAnchor, constant: 0),
            deliveryBoyImageView.bottomAnchor.constraint(equalTo: termsAndConditionsLabel.topAnchor, constant: -5),
            deliveryBoyImageView.widthAnchor.constraint(equalToConstant: 190),
            deliveryBoyImageView.heightAnchor.constraint(equalToConstant: 140),

            subGenieViewTitleLabel.leadingAnchor.constraint(equalTo: genieSubView.leadingAnchor, constant: 20),
            subGenieViewTitleLabel.topAnchor.constraint(equalTo: genieSubView.topAnchor, constant: 20),

            subGenieViewSubTitleTitleLabel.topAnchor.constraint(equalTo: subGenieViewTitleLabel.bottomAnchor, constant: 5),
            subGenieViewSubTitleTitleLabel.leadingAnchor.constraint(equalTo: genieSubView.leadingAnchor, constant: 20),

            arrowImageView.leadingAnchor.constraint(equalTo: genieSubView.leadingAnchor, constant: 20),
            arrowImageView.topAnchor.constraint(equalTo: subGenieViewSubTitleTitleLabel.bottomAnchor, constant: 20),

            termsAndConditionsLabel.bottomAnchor.constraint(equalTo: genieSubView.bottomAnchor, constant: -8),
            termsAndConditionsLabel.trailingAnchor.constraint(equalTo: genieSubView.trailingAnchor, constant: -20),

            useGenieLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            useGenieLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            useGenieLabel.heightAnchor.constraint(equalToConstant: 60),
            useGenieLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),

            genieView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            genieView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            genieView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            genieView.topAnchor.constraint(equalTo: topAnchor, constant: 0)
        ])
    }

}
