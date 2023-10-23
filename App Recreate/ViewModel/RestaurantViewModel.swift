//
//  RestaurantViewModel.swift
//  App Recreate
//
//  Created by Sam Chen on 10/22/23.
//

import Foundation
import SwiftUI

class RestaurantViewModel: ObservableObject {
    
    @Published var localRestaurants = [gaiaMasala, japango]
    @Published var globalRestaurants = [central, disfrutar]
//    @Published var favoriteRestaurant: String = ""
//    let restaurantDetailViewModel = RestaurantDetailViewModel()
    
//    init() {
//        restaurantDetailViewModel.delegate = self
//    }
//    let restaurantViewModel = RestaurantViewModel()
//}

//extension RestaurantViewModel: RestaurantDetailProtocol {
//    func setFavoriteRestaurant(restaunrant: Restaurant) {
//        favoriteRestaurant = restaunrant.name
//    }
}
