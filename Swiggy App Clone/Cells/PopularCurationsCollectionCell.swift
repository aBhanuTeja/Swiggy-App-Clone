//
//  PopularCurationsCollectionCell.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 07/02/22.
//

import UIKit

class PopularCurationsCollectionCell: UICollectionViewCell, ReusableView {
    
    static var defaultReuseIdentifier: String = String(describing: PopularCurationsCollectionCell.self)
    private lazy var popularCurationsView: CommonUIView = {
       let view = CommonUIView()
//        view.backgroundColor = .red
        view.addSubview(popularCurationImageView)
        view.addSubview(popularCurationTypeLabel)
        return view
    }()

    private lazy var popularCurationImageView: UIImageView = {
       let image = UIImageView()
//        image.layer.cornerRadius = image.bounds.width / 2
        image.translatesAutoresizingMaskIntoConstraints = false
//        image.clipsToBounds = true
//        image.layer.masksToBounds = true
        image.contentMode = .scaleAspectFit
//        image.backgroundColor = .yellow
//        image.image = UIImage(named: "popularCurations_eleven")
        return image
    }()

    private lazy var popularCurationTypeLabel: CommonLabel = {
        let label = CommonLabel()
        label.font = UIFont.getRegularFont(16)
        label.textColor = .lightGray
        label.textAlignment = .center
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
        addSubview(popularCurationsView)
        NSLayoutConstraint.activate([
            popularCurationImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            popularCurationImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            popularCurationImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
//            popularCurationImageView.bottomAnchor.constraint(equalTo: popularCurationTypeLabel.topAnchor, constant: -8),
            popularCurationImageView.heightAnchor.constraint(equalToConstant: 130),

            popularCurationTypeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            popularCurationTypeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            popularCurationTypeLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),

            popularCurationsView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            popularCurationsView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            popularCurationsView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            popularCurationsView.topAnchor.constraint(equalTo: topAnchor, constant: 0)
        ])
    }
    
    func setupPopularCurationsData(_ data: PopularCurationsData) {
        popularCurationImageView.image = data.curationImage
        popularCurationTypeLabel.text = data.curationName
    }
}
