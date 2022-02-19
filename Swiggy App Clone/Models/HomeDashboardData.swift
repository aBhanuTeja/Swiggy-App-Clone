//
//  HomeDashboardData.swift
//  Swiggy App Clone
//
//  Created by Bhanuteja on 06/02/22.
//

enum EstimateItemStatus: CaseIterable {
    case promotion
    case offer
    case restaurentYouLove
    case popularCurations
    case spotLightBrands
    case genie
    case featured
    case popularBrands
    case coupons
    case extraDiscounts
    case restaurantsNearBy

    func displayPromotionData() -> [PromotionData] {
        return promotionDisplayData
    }
    
    func displayOfferData() -> [OffernData] {
        return offerDisplayData
    }
    
    func displayRestaurentYouLoveData() -> [RestaurantYouLoveData] {
        return restaurantYouLoveDisplayData
    }
    
    func displayPopularCurationsData() -> [PopularCurationsData] {
        return popularCurationDisplayData
    }
    
    func displaySpotlightData() -> [SpotlightData] {
        return spotlightDisplayData
    }
    
    func displayCouponsData() -> [CouponsData] {
        return couponsDisplayData
    }
    
    func displayExtraDiscountData() -> [ExtraDiscountData] {
        return extraDiscountDisplayData
    }
    
    func displayPopularBrandsData() -> [PopularBrandsData] {
        return popularBrandsDisplayData
    }
    
    func restuarentNearByData() -> [RestuarantsNearByData] {
        return restuarantNearByDisplayData
    }
}

