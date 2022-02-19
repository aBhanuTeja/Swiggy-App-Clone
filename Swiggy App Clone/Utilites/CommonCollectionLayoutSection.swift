//
//  CommonCollectionLayoutSection.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 13/02/22.
//

import UIKit.UICollectionViewLayout

func getTodayFeaturedCollectionLayoutSection() -> NSCollectionLayoutSection {
    let layoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
    let item = NSCollectionLayoutItem(layoutSize: layoutSize)

    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.85), heightDimension: .absolute(165))
    let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])

    let section = NSCollectionLayoutSection(group: group)
    section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
    section.contentInsets = .init(top: Constants.HOMEDASHBOARD_TOP_SMALL_INSET - 10,
                                  leading: Constants.HOMEDASHBOARD_LEADING_INSET,
                                  bottom: 30,
                                  trailing: Constants.HOMEDASHBOARD_TRAILING_INSET)
    section.interGroupSpacing = Constants.HOMEDASHBOARD_SECTION_INTER_GROUP_SPACING
        let header: NSCollectionLayoutBoundarySupplementaryItem = .init(
            layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)),
            elementKind: DashboardHeaderCollectionCell.defaultReuseIdentifier,
            alignment: .top
        )
    let footer: NSCollectionLayoutBoundarySupplementaryItem = .init(
        layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(6)),
        elementKind: DashboardFooterCollectionView.defaultReuseIdentifier,
        alignment: .bottomLeading
    )
    footer.contentInsets = .init(top: 0, leading: -20, bottom: 0, trailing: -20)
    section.boundarySupplementaryItems = [header, footer]
    return section
}
