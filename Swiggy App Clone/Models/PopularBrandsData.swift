//
//  PopularBrandsData.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 14/02/22.
//

import UIKit.UIImage

struct PopularBrandsData {
    let isOneBenifits: Bool?
    let brandLogo: UIImage?
    let offerType: PopularBrandOfferType? //1: 10% off Upto 40    2: Buy 2 get 1
    let restaurantName: String?
    let estimatedDelivery: String?
}

enum PopularBrandOfferType {
    case offOffer
    case freeOffer
    
    func getOfferStr() -> String {
        switch self {
        case .offOffer:
            return "10% OFF • UPTO ₹40"
        case .freeOffer:
            return "BUY2 GET1"
        }
    }
}

let popularBrandsDisplayData = [PopularBrandsData(isOneBenifits: true,
                                                  brandLogo: UIImage(named: "BaskinRobbins"),
                                                  offerType: .offOffer,
                                                  restaurantName: "Baskin Robbins",
                                                  estimatedDelivery: "32 mins"),
                                PopularBrandsData(isOneBenifits: false,
                                                  brandLogo: UIImage(named: "CafeCoffeeDay"),
                                                  offerType: nil,
                                                  restaurantName: "Cafe Coffee Day",
                                                  estimatedDelivery: "28 mins"),
                                PopularBrandsData(isOneBenifits: true,
                                                  brandLogo: UIImage(named: "Dominos"),
                                                  offerType: .offOffer,
                                                  restaurantName: "Dominos",
                                                  estimatedDelivery: "30 mins"),
                                PopularBrandsData(isOneBenifits: true,
                                                  brandLogo: UIImage(named: "Faasos"),
                                                  offerType: .freeOffer,
                                                  restaurantName: "Faasos",
                                                  estimatedDelivery: "26 mins"),
                                PopularBrandsData(isOneBenifits: false,
                                                  brandLogo: UIImage(named: "frozenBottle"),
                                                  offerType: nil,
                                                  restaurantName: "Frozen Bottle",
                                                  estimatedDelivery: "30 mins"),
                                PopularBrandsData(isOneBenifits: true,
                                                  brandLogo: UIImage(named: "iceberg"),
                                                  offerType: .freeOffer,
                                                  restaurantName: "Ice-berg",
                                                  estimatedDelivery: "31 mins"),
                                PopularBrandsData(isOneBenifits: true,
                                                  brandLogo: UIImage(named: "kfc"),
                                                  offerType: .offOffer,
                                                  restaurantName: "KFC",
                                                  estimatedDelivery: "18 mins"),
                                PopularBrandsData(isOneBenifits: false,
                                                  brandLogo: UIImage(named: "kwalitywalls"),
                                                  offerType: nil,
                                                  restaurantName: "Kwality Walls",
                                                  estimatedDelivery: "33 mins"),
                                PopularBrandsData(isOneBenifits: true,
                                                  brandLogo: UIImage(named: "mdonals"),
                                                  offerType: .offOffer,
                                                  restaurantName: "McDonald's",
                                                  estimatedDelivery: "22 mins"),
                                PopularBrandsData(isOneBenifits: true,
                                                  brandLogo: UIImage(named: "OvenStory"),
                                                  offerType: .offOffer,
                                                  restaurantName: "Oven Story",
                                                  estimatedDelivery: "29 mins"),
                                PopularBrandsData(isOneBenifits: true,
                                                  brandLogo: UIImage(named: "pizzaHut"),
                                                  offerType: .offOffer,
                                                  restaurantName: "Pizza Hut",
                                                  estimatedDelivery: "28 mins")]
