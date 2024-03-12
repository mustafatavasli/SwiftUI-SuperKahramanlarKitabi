//
//  MapView.swift
//  SuperKahramanlarKitabi
//
//  Created by Mustafa TAVASLI on 12.03.2024.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    // @State var region = MKCoordinateRegion(center: superKahramanlar[0].koordinatLokasyonu, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    /* var body: some View {
        Map(coordinateRegion: $region)
    }
    */
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}

#Preview {
    MapView(coordinate: superKahramanlar[0].koordinatLokasyonu)
}
