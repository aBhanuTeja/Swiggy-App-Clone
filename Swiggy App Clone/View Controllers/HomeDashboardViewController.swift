//
//  HomeDashboardViewController.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 05/02/22.
//

import UIKit

class HomeDashboardViewController: UIViewController {

    private lazy var homeCollectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: getCollectionViewLayout())
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(PromotonCollectionCell.self)
        collectionView.register(OfferCollectionCell.self)
        collectionView.register(RestaurantYouLoveCollectionCell.self)
        collectionView.register(DashboardHeaderCollectionCell.self)
        collectionView.register(DashboardFooterCollectionView.self)
        collectionView.register(PopularCurationsCollectionCell.self)
        collectionView.register(SpotlightCollectionCell.self)
        collectionView.register(GenieCollectionCell.self)
        collectionView.register(FeaturedCollectionCell.self)
        collectionView.register(PopularBrandsCollectionCell.self)
        collectionView.register(CouponsCollectionCell.self)
        collectionView.register(ExtraDiscountsCollectionCell.self)
        collectionView.register(RestaurantsNearByCollectionCell.self)
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        self.view.addSubview(homeCollectionView)
    }

    fileprivate func setupNavigationBar() {
        let appearance = UINavigationBarAppearance()
        appearance.shadowColor = .clear
        appearance.configureWithOpaqueBackground()
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance

        let leftBtn = UIButton()
        let rightBtn = UIButton()
        leftBtn.setupButtonWithImage(isImageRightOrLeft: .right, buttonTitle: "Home", buttonImage: "chevron.down", customFont: UIFont.getBoldFont(18), color: .black, imageSize: 10)
        rightBtn.setupButtonWithImage(isImageRightOrLeft: .left, buttonTitle: "Offers", buttonImage: "percent", customFont:  UIFont.getBoldFont(14), color: .black, imageSize: 14)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftBtn)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
    }
/*
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.panGestureRecognizer.translation(in: scrollView).y < 0 {
            self.tabBarController?.setTabBarVisible(visible: false, collectionView: homeCollectionView)
        } else {
            self.tabBarController?.setTabBarVisible(visible: true, collectionView: homeCollectionView)
        }
    }
*/
    private func getCollectionViewLayout() -> UICollectionViewCompositionalLayout {
        let config = UICollectionViewCompositionalLayoutConfiguration()
        config.scrollDirection = .vertical

        return UICollectionViewCompositionalLayout(sectionProvider: { sectionIndex, _ in
            switch EstimateItemStatus.allCases[sectionIndex] {
            case .promotion:
                let layoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: layoutSize)

                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.425), heightDimension: .absolute(120))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])

                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = .init(top: Constants.HOMEDASHBOARD_TOP_LARGE_INSET,
                                              leading: Constants.HOMEDASHBOARD_LEADING_INSET,
                                              bottom: 12,
                                              trailing: Constants.HOMEDASHBOARD_TRAILING_INSET)
                section.interGroupSpacing = Constants.HOMEDASHBOARD_SECTION_INTER_GROUP_SPACING
                return section
            case .offer:
                let layoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: layoutSize)

                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.82), heightDimension: .absolute(200))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])

                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.contentInsets = .init(top: Constants.HOMEDASHBOARD_TOP_LARGE_INSET,
                                              leading: Constants.HOMEDASHBOARD_LEADING_INSET,
                                              bottom: 20,
                                              trailing: Constants.HOMEDASHBOARD_TRAILING_INSET)
                section.interGroupSpacing = Constants.HOMEDASHBOARD_SECTION_INTER_GROUP_SPACING - 5
                return section
            case .restaurentYouLove:
                let layoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: layoutSize)

                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.20), heightDimension: .absolute(135))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])

                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = .init(top: Constants.HOMEDASHBOARD_TOP_SMALL_INSET,
                                              leading: Constants.HOMEDASHBOARD_LEADING_INSET,
                                              bottom: 15,
                                              trailing: Constants.HOMEDASHBOARD_TRAILING_INSET)
                section.interGroupSpacing = Constants.HOMEDASHBOARD_SECTION_INTER_GROUP_SPACING - 8
                let header: NSCollectionLayoutBoundarySupplementaryItem = .init(
                    layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)),
                    elementKind: DashboardHeaderCollectionCell.defaultReuseIdentifier,
                    alignment: .topLeading
                )
               // header.pinToVisibleBounds = true
                
                let footer: NSCollectionLayoutBoundarySupplementaryItem = .init(
                    layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(6)),
                    elementKind: DashboardFooterCollectionView.defaultReuseIdentifier,
                    alignment: .bottomLeading
                )
                footer.contentInsets = .init(top: 80, leading: -20, bottom: 0, trailing: -20)
                section.boundarySupplementaryItems = [header, footer]
                return section
            case .popularCurations:
                let layoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1/2))
                let item = NSCollectionLayoutItem(layoutSize: layoutSize)

                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.25), heightDimension: .absolute(320))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 2)
                group.interItemSpacing = .fixed(20)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = .init(top: Constants.HOMEDASHBOARD_TOP_LARGE_INSET - 10,
                                              leading: Constants.HOMEDASHBOARD_LEADING_INSET,
                                              bottom: 20,
                                              trailing: Constants.HOMEDASHBOARD_TRAILING_INSET)
                section.interGroupSpacing = Constants.HOMEDASHBOARD_SECTION_INTER_GROUP_SPACING - 10
                let header: NSCollectionLayoutBoundarySupplementaryItem = .init(
                    layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)),
                    elementKind: DashboardHeaderCollectionCell.defaultReuseIdentifier,
                    alignment: .topLeading
                )

                let footer: NSCollectionLayoutBoundarySupplementaryItem = .init(
                    layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(6)),
                    elementKind: DashboardFooterCollectionView.defaultReuseIdentifier,
                    alignment: .bottomLeading
                )
                footer.contentInsets = .init(top: 0, leading: -20, bottom: 0, trailing: -20)
                section.boundarySupplementaryItems = [header, footer]
                return section
            case .spotLightBrands:
                let layoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1/3))
                let item = NSCollectionLayoutItem(layoutSize: layoutSize)

                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.38), heightDimension: .absolute(400))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 2)
                group.interItemSpacing = .fixed(40)

                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = .init(top: Constants.HOMEDASHBOARD_TOP_SMALL_INSET,
                                              leading: Constants.HOMEDASHBOARD_LEADING_INSET,
                                              bottom: 50,
                                              trailing: Constants.HOMEDASHBOARD_TRAILING_INSET)
                section.interGroupSpacing = Constants.HOMEDASHBOARD_SECTION_INTER_GROUP_SPACING
                let header: NSCollectionLayoutBoundarySupplementaryItem = .init(
                    layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)),
                    elementKind: DashboardHeaderCollectionCell.defaultReuseIdentifier,
                    alignment: .top
                )
                section.boundarySupplementaryItems = [header]
                return section
            case .genie:
                let layoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: layoutSize)

                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(550))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])

                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = .init(top: Constants.HOMEDASHBOARD_TOP_SMALL_INSET,
                                              leading: 0,
                                              bottom: 30,
                                              trailing: 0)
                section.interGroupSpacing = Constants.HOMEDASHBOARD_SECTION_INTER_GROUP_SPACING
                return section
            case .featured:
                return getTodayFeaturedCollectionLayoutSection()
            case .popularBrands:
                let layoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1/3))
                let item = NSCollectionLayoutItem(layoutSize: layoutSize)

                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.25), heightDimension: .absolute(300))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 2)
                group.interItemSpacing = .fixed(20)

                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = .init(top: Constants.HOMEDASHBOARD_TOP_SMALL_INSET,
                                              leading: Constants.HOMEDASHBOARD_LEADING_INSET,
                                              bottom: 30,
                                              trailing: Constants.HOMEDASHBOARD_TRAILING_INSET)
                section.interGroupSpacing = Constants.HOMEDASHBOARD_SECTION_INTER_GROUP_SPACING
                let header: NSCollectionLayoutBoundarySupplementaryItem = .init(
                    layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)),
                    elementKind: DashboardHeaderCollectionCell.defaultReuseIdentifier,
                    alignment: .top
                )
                section.boundarySupplementaryItems = [header]
                return section
            case .coupons:
                let layoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: layoutSize)

                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/3), heightDimension: .absolute(150))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.interItemSpacing = .fixed(20)

                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = .init(top: Constants.HOMEDASHBOARD_TOP_SMALL_INSET,
                                              leading: Constants.HOMEDASHBOARD_LEADING_INSET,
                                              bottom: 30,
                                              trailing: Constants.HOMEDASHBOARD_TRAILING_INSET)
                section.interGroupSpacing = Constants.HOMEDASHBOARD_SECTION_INTER_GROUP_SPACING
                let header: NSCollectionLayoutBoundarySupplementaryItem = .init(
                    layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)),
                    elementKind: DashboardHeaderCollectionCell.defaultReuseIdentifier,
                    alignment: .topLeading
                )
                
                section.boundarySupplementaryItems = [header]
                return section
            case .extraDiscounts:
                let layoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1/2))
                let item = NSCollectionLayoutItem(layoutSize: layoutSize)

                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.38), heightDimension: .absolute(420))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 2)
                group.interItemSpacing = .fixed(30)

                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = .init(top: Constants.HOMEDASHBOARD_TOP_SMALL_INSET,
                                              leading: Constants.HOMEDASHBOARD_LEADING_INSET,
                                              bottom: 42,
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
            case .restaurantsNearBy:
                let layoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: layoutSize)

                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(120))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])

                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = .init(top: Constants.HOMEDASHBOARD_TOP_SMALL_INSET,
                                              leading: Constants.HOMEDASHBOARD_LEADING_INSET,
                                              bottom: 0,
                                              trailing: Constants.HOMEDASHBOARD_TRAILING_INSET)
                section.interGroupSpacing = Constants.HOMEDASHBOARD_SECTION_INTER_GROUP_SPACING

                let header: NSCollectionLayoutBoundarySupplementaryItem = .init(
                    layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)),
                    elementKind: DashboardHeaderCollectionCell.defaultReuseIdentifier,
                    alignment: .topLeading
                )
                section.boundarySupplementaryItems = [header]
                return section
            }
        }, configuration: config)
    }
}

extension HomeDashboardViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return EstimateItemStatus.allCases.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch EstimateItemStatus.allCases[section] {
        case .promotion:
            return EstimateItemStatus.allCases[section].displayPromotionData().count
        case .offer:
            return EstimateItemStatus.allCases[section].displayOfferData().count
        case .restaurentYouLove:
            return EstimateItemStatus.allCases[section].displayRestaurentYouLoveData().count
        case .popularCurations:
            return EstimateItemStatus.allCases[section].displayPopularCurationsData().count
        case .spotLightBrands:
            return EstimateItemStatus.allCases[section].displaySpotlightData().count
        case .genie:
            return 1
        case .featured:
            return EstimateItemStatus.allCases[section].displayOfferData().count
        case .popularBrands:
            return EstimateItemStatus.allCases[section].displayPopularBrandsData().count
        case .coupons:
            return EstimateItemStatus.allCases[section].displayCouponsData().count
        case .extraDiscounts:
            return EstimateItemStatus.allCases[section].displayExtraDiscountData().count
        case .restaurantsNearBy:
            return EstimateItemStatus.allCases[section].restuarentNearByData().count
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch EstimateItemStatus.allCases[indexPath.section] {
        case .promotion:
            let cell = collectionView.dequeueCell(PromotonCollectionCell.self, indexPath)
            let data = EstimateItemStatus.allCases[indexPath.section].displayPromotionData()[indexPath.item]
            cell.displayPromotionData(data)
            return cell
        case .offer:
            let cell = collectionView.dequeueCell(OfferCollectionCell.self, indexPath)
            let data = EstimateItemStatus.allCases[indexPath.section].displayOfferData()[indexPath.item]
            cell.displayOfferData(data)
            return cell
        case .restaurentYouLove:
            let cell = collectionView.dequeueCell(RestaurantYouLoveCollectionCell.self, indexPath)
            let data = EstimateItemStatus.allCases[indexPath.section].displayRestaurentYouLoveData()[indexPath.item]
            cell.setUpRestaurantYouLoveData(data)
            return cell
        case .popularCurations:
            let cell = collectionView.dequeueCell(PopularCurationsCollectionCell.self, indexPath)
            let data = EstimateItemStatus.allCases[indexPath.section].displayPopularCurationsData()[indexPath.item]
            cell.setupPopularCurationsData(data)
            return cell
        case .spotLightBrands:
            let cell = collectionView.dequeueCell(SpotlightCollectionCell.self, indexPath)
            let data = EstimateItemStatus.allCases[indexPath.section].displaySpotlightData()[indexPath.item]
            cell.setupDisplaySpotlightData(data)
            return cell
        case .genie:
            let cell = collectionView.dequeueCell(GenieCollectionCell.self, indexPath)
            return cell
        case .featured:
            let cell = collectionView.dequeueCell(FeaturedCollectionCell.self, indexPath)
            let data = EstimateItemStatus.allCases[indexPath.section].displayOfferData()[indexPath.item]
            cell.displayFeaturedData(data)
            return cell
        case .popularBrands:
            let cell = collectionView.dequeueCell(PopularBrandsCollectionCell.self, indexPath)
            let data = EstimateItemStatus.allCases[indexPath.section].displayPopularBrandsData()[indexPath.item]
            cell.setUpPopularBrandsData(data)
            return cell
        case .coupons:
            let cell = collectionView.dequeueCell(CouponsCollectionCell.self, indexPath)
            let data = EstimateItemStatus.allCases[indexPath.section].displayCouponsData()[indexPath.item]
            cell.displayCouponsData(data)
            return cell
        case .extraDiscounts:
            let cell = collectionView.dequeueCell(ExtraDiscountsCollectionCell.self, indexPath)
            let data = EstimateItemStatus.allCases[indexPath.section].displayExtraDiscountData()[indexPath.item]
            cell.setupExtraDiscountsData(data)
            return cell
        case .restaurantsNearBy:
            let cell = collectionView.dequeueCell(RestaurantsNearByCollectionCell.self, indexPath)
            let data = EstimateItemStatus.allCases[indexPath.section].restuarentNearByData()[indexPath.item]
            cell.setupRestaurantsNearByData(data)
            return cell
        }
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == DashboardHeaderCollectionCell.defaultReuseIdentifier {
            let cell = collectionView.dequeueCell(DashboardHeaderCollectionCell.self, indexPath)
            cell.setUpData(EstimateItemStatus.allCases[indexPath.section])
            return cell
        } else {
            let cell = collectionView.dequeueCell(DashboardFooterCollectionView.self, indexPath)
            return cell
        }
    }
}
/*
extension UITabBarController {
    func tabBarIsVisible() ->Bool {
        return self.tabBar.frame.origin.y < UIScreen.main.bounds.height
    }
    
    fileprivate func setTabBarVisible(visible: Bool, collectionView: UICollectionView) {
        if (tabBarIsVisible() == visible) { return }
        let height = self.tabBar.frame.size.height
        let offsetY = (visible ? -height : height)
        UIViewPropertyAnimator(duration: 0.3, curve: .linear) {
            self.tabBar.frame = CGRect(x: 0,
                                       y: self.view.frame.height + offsetY,
                                       width: self.view.frame.width,
                                       height: height)
            collectionView.frame = CGRect(x: collectionView.frame.origin.x,
                                          y:  collectionView.frame.origin.y,
                                          width:  collectionView.bounds.width,
                                          height:  collectionView.bounds.height + offsetY)
            self.view.setNeedsDisplay()
            self.view.layoutIfNeeded()
        }.startAnimation()
    }
}
*/
