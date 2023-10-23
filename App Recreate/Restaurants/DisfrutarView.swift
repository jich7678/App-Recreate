//
//  DisfrutarView.swift
//  App Recreate
//
//  Created by Sam Chen on 10/23/23.
//

import Foundation
import SwiftUI

struct DisfrutarView: View {
    @ObservedObject var restaurantViewModel = RestaurantViewModel()
    //let restaurants: Restaurant
    //let restaurantViewModel: RestaurantViewModel
    //let restaurantDetailViewModel: RestaurantDetailViewModel
    @State private var showDetail = false
    @State private var favorite = false
    
    var body: some View {
        ZStack {
            Image("disfrutar")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .frame(width:390, height:500)
            
            VStack {
                VStack {
                    HStack {
                        Text("\(restaurantViewModel.globalRestaurants[1].name)")
                        Button {
                            favorite.toggle()
                            //restaurantDetailViewModel.heartRestaurant(restaurant: restaurants)
                        } label: {
                            Label("Graph", systemImage: favorite ? "heart.fill" : "heart")
                                .labelStyle(.iconOnly)
                                .imageScale(.medium)
                            //                            .scaleEffect(showDetail ? 1.5 : 1)
                                .padding()
                        }.contentTransition(.symbolEffect(.replace))
                        
                        Spacer()
                        Button {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                showDetail.toggle()
                            }
                        } label: {
                            Label("Graph", systemImage: "chevron.down")
                                .labelStyle(.iconOnly)
                                .imageScale(.medium)
                                .rotationEffect(.degrees(showDetail ? 180 : 0))
                            //                            .scaleEffect(showDetail ? 1.5 : 1)
                                .padding()
                        }
                    }
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                    .background(.ultraThinMaterial)
                    .cornerRadius(10)
                    .shadow(radius: showDetail ? 100: 0)
                    
                    if showDetail {
                        Text("\(restaurantViewModel.globalRestaurants[1].description)")
                            .font(.title)
                    }
                }
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                    .frame(maxHeight: showDetail ? .infinity : 90)
                    .background(.ultraThinMaterial)
                    .cornerRadius(10)
                    .shadow(radius: showDetail ? 100: 0)
                
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .bottom
            )
        }
    }
}

#Preview {
    ContentView()
}

