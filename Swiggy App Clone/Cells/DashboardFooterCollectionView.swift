//
//  DashboardFooterCollectionView.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 07/02/22.
//

import UIKit

class DashboardFooterCollectionView: UICollectionReusableView, ReusableView {

    static var defaultReuseIdentifier: String = String(describing: DashboardFooterCollectionView.self)
    private lazy var dashboardFooterView: CommonUIView = {
       let view = CommonUIView()
        view.backgroundColor = .lightGray
        view.alpha = 0.3
        return view
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
        addSubview(dashboardFooterView)
        NSLayoutConstraint.activate([
            dashboardFooterView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            dashboardFooterView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            dashboardFooterView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            dashboardFooterView.topAnchor.constraint(equalTo: topAnchor, constant: 0)
        ])
    }
}
