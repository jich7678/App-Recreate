//
//  ContentView.swift
//  App Recreate
//
//  Created by Sam Chen on 10/18/23.
//

import SwiftUI

struct ContentView: View {
    //let restaurants: Restaurant
    
    var body: some View {
        VStack {
            TabView {
//                JapangoView()
//                    .tabItem {
//                        Label("Home", systemImage:"house")
//                    }
                HomeView()
                    .tabItem {
                        Label("Home", systemImage:"house")
                    }
                LikeView()
                    .tabItem {
                        Label("Likes", systemImage:"heart.square.fill")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
