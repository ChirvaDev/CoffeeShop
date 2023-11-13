//
//  LocationView.swift
//  CoffeeShop
//
//  Created by Pro on 10.11.2023.
//

import SwiftUI
import MapKit

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct LocationView: View {
    //location of city
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(
        latitude: 50.43983628165643, longitude:  30.5215653143875), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    //location of cafe
    let anontation = [Place(name: "Coffe Shop", coordinate: CLLocationCoordinate2DMake(50.43983628165642, 30.5215653143875))
    ]
    
    var body: some View {
        VStack{
            TopView()
            
            Spacer()
            
            Image("foto")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            VStack(spacing: 10){
                Text("Coffee Shop")
                    .font(.custom("Poppins-Semibold", size: 25))
                
                Text("Work schedule: Mon-Fri: 8:00 - 20:00")
                    .font(.custom("Poppins-Semibold", size: 17))
                    .foregroundColor(.white)
                    .padding(.vertical, 6)
                    .padding(.horizontal)
                    .background(RoundedRectangle(cornerRadius: 15).foregroundColor(Color.brown))
                
                Text("Our location:")
                    .font(.custom("Poppins-Semibold", size: 20))
            }
            // map with annotation
            Map(coordinateRegion: $region, annotationItems: anontation){
                place in
                MapAnnotation(coordinate: place.coordinate){
                    Image(systemName: "cup.and.saucer.fill")
                        .foregroundColor(.white)
                        .padding(9)
                        .background(Color.brown)
                        .clipShape(Circle())
                }
            }
            .frame(height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(10)
            
            Spacer()
        }
        .background(Color.black.opacity(0.1).ignoresSafeArea())
    }
}


struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}



