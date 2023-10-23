//
//  HomeView.swift
//  App Recreate
//
//  Created by Sam Chen on 10/18/23.
//

import SwiftUI

struct HomeView: View {
    // 0 for local, 1 for global
    @State private var selectedToggle = 0
    
    var body: some View {
        VStack {
            Picker("", selection: $selectedToggle) {
                Text("Local").tag(0)
                Text("Global").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Spacer()
            
            if selectedToggle == 0 {
                LocalDetailView()
            } else if selectedToggle == 1 {
                GlobalDetailView()
            }
        }
    }
}

#Preview {
    ContentView()
}
