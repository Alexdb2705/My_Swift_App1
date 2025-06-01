//
//  WorldView.swift
//  My_app1
//
//  Created by Alex del Barrio on 1/6/25.
//

import MapKit
import SwiftUI

struct WorldView: View {
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    var body: some View {
        
    }
}

#Preview {
    WorldView()
}
