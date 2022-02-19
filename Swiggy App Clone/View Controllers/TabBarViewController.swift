//
//  TabBarViewController.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 10/02/22.
//

import UIKit

enum TabBarData: CaseIterable {
    case swiggy
    case search
    case cart
    case account

    func getString() -> String {
        switch self {
        case .swiggy:
            return "Swiggy"
        case .search:
            return "Search"
        case .cart:
            return "Cart"
        case .account:
            return "Account"
        }
    }

    func getImages() -> String {
        switch self {
        case .swiggy:
            return "rotate.3d"
        case .search:
            return "magnifyingglass"
        case .cart:
            return "bag"
        case .account:
            return "person"
        }
    }
}

class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        let dashboard = UINavigationController(rootViewController: HomeDashboardViewController())
        let search = UINavigationController(rootViewController: SearchViewController())
        let cart = UINavigationController(rootViewController: CartViewController())
        let account = UINavigationController(rootViewController: AccountViewController())

        dashboard.title = TabBarData.swiggy.getString()
        search.title = TabBarData.search.getString()
        cart.title = TabBarData.cart.getString()
        account.title = TabBarData.account.getString()
        self.setViewControllers([dashboard, search, cart, account], animated: false)

        guard let items = self.tabBar.items else {
            return
        }

        let images = [TabBarData.swiggy.getImages(),
                      TabBarData.search.getImages(),
                      TabBarData.cart.getImages(),
                      TabBarData.account.getImages()]

        for x in 0..<images.count {
            items[x].image = UIImage(systemName: images[x])
        }
        UITabBar.appearance().barTintColor = .white
        self.tabBar.isTranslucent = false
    }
}

extension TabBarViewController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        let selectedIndex = tabBarController.viewControllers?.firstIndex(of: viewController)!
        switch TabBarData.allCases[selectedIndex!] {
        case .swiggy:
            print("Tapped on Swiggy")
        case .search:
            print("Tapped on Search")
        case .cart:
            print("Tapped on Cart")
        case .account:
            print("Tapped on Account")
        }
    }
}
