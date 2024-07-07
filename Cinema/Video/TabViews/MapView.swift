//
//  MapView.swift
//  Cinema
//
//  Created by Mohamed Saad on 06/07/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK: - Properties
//    
//    @State private var position = MapCameraPosition.region( MKCoordinateRegion(
//                    center: CLLocationCoordinate2D(latitude: 24.4539, longitude: 54.3773),
//                    span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0)
//                )
//    )
    
    let cinemaLocations: [LocationModel] = decode(file: "locations.json")
    
    //MARK: - Body
    var body: some View {
        //MARK: - 1. MapView only
//        Map(position: $position)
        
        //MARK: - 2. MapView with Marks
//        Map{
//            ForEach(cinemaLocations) { cinema in
//                Marker(cinema.name, coordinate: cinema.location)
//            }
//        }
        
        //MARK: - 3. MapView with Annotation
        Map {
            ForEach(cinemaLocations) { cinema in
                Annotation(cinema.name, coordinate: cinema.location) {
                    CinemaAnnotation(image: cinema.image)
                }
            }
        }

    }
}

#Preview {
    MapView()
}
