//
//  PromotionData.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 11/02/22.
//

import UIKit.UIImageView

struct PromotionData {
    let title: String?
    let description: String?
    let image: UIImage?
}

let promotionDisplayData = [PromotionData(title: "Restaurants",
                                          description: "Enjoy your favourite treats",
                                          image: UIImage(named: "Juice")),
                            PromotionData(title: "Genie",
                                          description: "Anything you need, delivered",
                                          image: UIImage(named: "delivery"))]
