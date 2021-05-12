//
//  MapView.swift
//  UI-182
//
//  Created by にゃんにゃん丸 on 2021/05/12.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
   
    
   
    
    func makeUIView(context: Context) -> MKMapView {
        let view = MKMapView(frame: .zero)
        
        
        
        return view
        
        
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let coordinat = CLLocationCoordinate2D(latitude: 35.63440, longitude: 139.71437)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coordinat,span: span)
        
        uiView.setRegion(region, animated: true)
        
       let anotation = MKPointAnnotation()
        anotation.coordinate = coordinat
        anotation.title = "STAR BUCKS"
        anotation.subtitle = "大崎"

        uiView.addAnnotation(anotation)
        
        
      
        
    
    
        
    }
   
    

    
    
}

