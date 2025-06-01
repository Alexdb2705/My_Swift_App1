//
//  ContentView.swift
//  My_app1
//
//  Created by Alex del Barrio on 31/5/25.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
                .foregroundStyle(.secondary)
            
            Text(location.description)
            
            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more)
        }
        .navigationTitle("Discover")
    }
}

#Preview {
    TabView {
        NavigationStack {
            ContentView(location: Locations().primary)
        }
        .tabItem {
            Text("Discover")
            Image(systemName: "airplane.circle.fill")
        }
    }
}
