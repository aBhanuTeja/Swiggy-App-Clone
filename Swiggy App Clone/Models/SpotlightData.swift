//
//  SpotlightData.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 12/02/22.
//

import UIKit.UIImageView

struct SpotlightData {
    let restaurantImage: UIImage?
    let restaurantName: String?
    let estimatedDelivery: String?
    let isSwiggyOne: Bool?
}

let spotlightDisplayData = [SpotlightData(restaurantImage: UIImage(named: "restaurantYouLove_one"),
                                          restaurantName: "Pariwar Paradise",
                                          estimatedDelivery: "4.1 • 32 Mins",
                                          isSwiggyOne: true),
                            SpotlightData(restaurantImage: UIImage(named: "restaurantYouLove_two"),
                                          restaurantName: "Muralikrishna Veg",
                                          estimatedDelivery: "3.8 • 38 Mins",
                                          isSwiggyOne: false),
                            SpotlightData(restaurantImage: UIImage(named: "restaurantYouLove_three"),
                                          restaurantName: "Mint Multi Cuisine Restaurant",
                                          estimatedDelivery: "3.6 • 22 Mins",
                                          isSwiggyOne: false),
                            SpotlightData(restaurantImage: UIImage(named: "restaurantYouLove_four"),
                                          restaurantName: "Hotel Rayalaseema",
                                          estimatedDelivery: "3.1 • 18 Mins",
                                          isSwiggyOne: true),
                            SpotlightData(restaurantImage: UIImage(named: "restaurantYouLove_five"),
                                          restaurantName: "Hangout Eatery",
                                          estimatedDelivery: "4.2 • 31 Mins",
                                          isSwiggyOne: false),
                            SpotlightData(restaurantImage: UIImage(named: "restaurantYouLove_six"),
                                          restaurantName: "Janatha Family Dhaba",
                                          estimatedDelivery: "3.3 • 36 Mins",
                                          isSwiggyOne: false),
                            SpotlightData(restaurantImage: UIImage(named: "restaurantYouLove_seven"),
                                          restaurantName: "Pizza Hut",
                                          estimatedDelivery: "3.4 • 18 Mins",
                                          isSwiggyOne: true),
                            SpotlightData(restaurantImage: UIImage(named: "restaurantYouLove_eight"),
                                          restaurantName: "McDonald's",
                                          estimatedDelivery: "3.1 • 30 Mins",
                                          isSwiggyOne: true),
                            SpotlightData(restaurantImage: UIImage(named: "restaurantYouLove_nine"),
                                          restaurantName: "Harshika Food Court",
                                          estimatedDelivery: "2.4 • 27 Mins",
                                          isSwiggyOne: false),
                            SpotlightData(restaurantImage: UIImage(named: "restaurantYouLove_ten"),
                                          restaurantName: "Komala vilas",
                                          estimatedDelivery: "4.1 • 33 Mins",
                                          isSwiggyOne: true)]
