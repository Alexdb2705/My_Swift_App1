//
//  My_app1App.swift
//  My_app1
//
//  Created by Alex del Barrio on 31/5/25.
//

import SwiftUI

@main
struct My_app1App: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationStack {
                    ContentView(location: Locations().primary)
                }
                .tabItem {
                    Text("Discover")
                    Image(systemName: "airplane.circle.fill")
                }
                
                NavigationStack {
                    WorldView()
                }
                .tabItem {
                    Text("World")
                    Image(systemName: "globe")
                }
            }
        }
    }
}
    

