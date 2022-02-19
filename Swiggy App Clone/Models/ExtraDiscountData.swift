//
//  ExtraDiscountData.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 13/02/22.
//

import UIKit.UIImage

struct ExtraDiscountData {
    let restaurantImage: UIImage?
    let restaurantName: String?
    let estimatedDelivery: String?
}

let extraDiscountDisplayData = [ExtraDiscountData(restaurantImage: UIImage(named: "restaurantYouLove_one"),
                                          restaurantName: "Pariwar Paradise",
                                          estimatedDelivery: "4.1 • 32 Mins"),
                            ExtraDiscountData(restaurantImage: UIImage(named: "restaurantYouLove_two"),
                                          restaurantName: "Muralikrishna Veg",
                                          estimatedDelivery: "3.8 • 38 Mins"),
                            ExtraDiscountData(restaurantImage: UIImage(named: "restaurantYouLove_three"),
                                          restaurantName: "Mint Multi Cuisine Restaurant",
                                          estimatedDelivery: "3.6 • 22 Mins"),
                            ExtraDiscountData(restaurantImage: UIImage(named: "restaurantYouLove_four"),
                                          restaurantName: "Hotel Rayalaseema",
                                          estimatedDelivery: "3.1 • 18 Mins"),
                            ExtraDiscountData(restaurantImage: UIImage(named: "restaurantYouLove_five"),
                                          restaurantName: "Hangout Eatery",
                                          estimatedDelivery: "4.2 • 31 Mins"),
                            ExtraDiscountData(restaurantImage: UIImage(named: "restaurantYouLove_six"),
                                          restaurantName: "Janatha Family Dhaba",
                                          estimatedDelivery: "3.3 • 36 Mins"),
                            ExtraDiscountData(restaurantImage: UIImage(named: "restaurantYouLove_seven"),
                                          restaurantName: "Pizza Hut",
                                          estimatedDelivery: "3.4 • 18 Mins"),
                            ExtraDiscountData(restaurantImage: UIImage(named: "restaurantYouLove_eight"),
                                          restaurantName: "McDonald's",
                                          estimatedDelivery: "3.1 • 30 Mins"),
                            ExtraDiscountData(restaurantImage: UIImage(named: "restaurantYouLove_nine"),
                                          restaurantName: "Harshika Food Court",
                                          estimatedDelivery: "2.4 • 27 Mins"),
                            ExtraDiscountData(restaurantImage: UIImage(named: "restaurantYouLove_ten"),
                                          restaurantName: "Komala vilas",
                                          estimatedDelivery: "4.1 • 33 Mins")]
