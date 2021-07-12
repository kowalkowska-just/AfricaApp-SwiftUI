//
//  MapView.swift
//  AfricaApp-SwiftUI
//
//  Created by Justyna Kowalkowska on 23/06/2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    //MARK: - Properties
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    //MARK: - Body
    
    var body: some View {
        //MARK: - No1 Basic Map
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            // (A) PIN: Old style (always static)
            //MapPin(coordinate: item.location, tint: .accentColor)
            
            // (B) MARKER: New style (always static)
            //MapMarker(coordinate: item.location, tint: .accentColor)
            
            // (C) CUSTOM: Basic annotation (it could be interactive)
            //MapAnnotation(coordinate: item.location) {
            //   Image("logo")
            //        .resizable()
            //        .scaledToFit()
            //        .frame(width: 32, height: 32, alignment: .center)
            
            // (D) CUSTOM advanced annotation (it could be interactive)
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            } //: Annotation
        })
    }
}

//MARK: - Preview

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
