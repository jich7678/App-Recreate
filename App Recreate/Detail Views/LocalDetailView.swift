//
//  LocalDetailView.swift
//  App Recreate
//
//  Created by Sam Chen on 10/18/23.
//

import Foundation
import SwiftUI

struct LocalDetailView: View {
    //var restaurants = Restaurant
    @ObservedObject var restaurantViewModel = RestaurantViewModel()
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 20) {
                GaiaMasalaView()
                JapangoView()
            }
        }
    }
}

