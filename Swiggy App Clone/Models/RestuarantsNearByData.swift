//
//  RestuarantsNearByData.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 15/02/22.
//

import UIKit.UIImageView

struct RestuarantsNearByData {
    let restaurantImage: UIImage?
    let restaurantName: String?
    let ratingETAPrice: String?
    let cuisine: String?
    let location: String?
}

let restuarantNearByDisplayData = [RestuarantsNearByData(restaurantImage: UIImage(named: "restaurantYouLove_one"),
                                                         restaurantName: "Pariwar Paradise",
                                                         ratingETAPrice: "3.1 • 32 Mins • ₹250 for two",
                                                         cuisine: "Bakery, Continental",
                                                         location: "Vizag"),
                                   RestuarantsNearByData(restaurantImage: UIImage(named: "restaurantYouLove_two"),
                                                                                            restaurantName: "Muralikrishna Veg",
                                                                                            ratingETAPrice: "3.3 • 33 Mins • ₹110 for two",
                                                                                            cuisine: "North Indian, South Indian",
                                                                                            location: "Hyderabad"),
                                   RestuarantsNearByData(restaurantImage: UIImage(named: "restaurantYouLove_three"),
                                                                                            restaurantName: "Mint Multi Cuisine Restaurant",
                                                                                            ratingETAPrice: "3.5 • 38 Mins • ₹110 for two",
                                                                                            cuisine: "South Indian, North Indian",
                                                                                            location: "Pune"),
                                   RestuarantsNearByData(restaurantImage: UIImage(named: "restaurantYouLove_four"),
                                                                                            restaurantName: "Hotel Rayalaseema",
                                                                                            ratingETAPrice: "3.3 • 33 Mins • ₹222 for two",
                                                                                            cuisine: "Biryani",
                                                                                            location: "Mumbai"),
                                   RestuarantsNearByData(restaurantImage: UIImage(named: "restaurantYouLove_five"),
                                                                                            restaurantName: "Hangout Eatery",
                                                                                            ratingETAPrice: "4 • 33 Mins • ₹210 for two",
                                                                                            cuisine: "Biryani",
                                                                                            location: "Panaji"),
                                   RestuarantsNearByData(restaurantImage: UIImage(named: "restaurantYouLove_six"),
                                                                                            restaurantName: "Janatha Family Dhaba",
                                                                                            ratingETAPrice: "4.1 • 27 Mins • ₹170 for two",
                                                                                            cuisine: "Biryani",
                                                                                            location: "Coimbatore"),
                                   RestuarantsNearByData(restaurantImage: UIImage(named: "restaurantYouLove_seven"),
                                                                                            restaurantName: "Pizza Hut",
                                                                                            ratingETAPrice: "4.1 • 33 Mins • ₹205 for two",
                                                                                            cuisine: "North Indian, South Indian",
                                                                                            location: "Bangalore"),
                                   RestuarantsNearByData(restaurantImage: UIImage(named: "restaurantYouLove_eight"),
                                                                                            restaurantName: "McDonald's",
                                                                                            ratingETAPrice: "3.3 • 33 Mins • ₹400 for two",
                                                                                            cuisine: "Bakery, Continental",
                                                                                            location: "Chennai")]
