//
//  WorldView.swift
//  My_app1
//
//  Created by Alex del Barrio on 1/6/25.
//

import MapKit
import SwiftUI

struct WorldView: View {
    @EnvironmentObject var locations: Locations
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    var body: some View {
        Map(coordinateRegion: $region,
            showsUserLocation: true, annotationItems: locations.places) {
            lugar in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: lugar.latitude, longitude: lugar.longitude)) {
                NavigationLink(destination: ContentView(location: lugar)){
                    Image(lugar.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)
                }
            }
            
        }
            .navigationTitle("Locations")
        
    }
}

#Preview {
    WorldView()
}
