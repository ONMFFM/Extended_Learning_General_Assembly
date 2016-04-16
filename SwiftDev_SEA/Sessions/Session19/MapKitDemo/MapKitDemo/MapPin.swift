//
//  MapPin.swift
//  MapKitDemo
//
//  Created by Owen Pierce on 2/11/16.
//  Copyright © 2016 Owen Pierce. All rights reserved.
//

import UIKit
import MapKit

//latitude: 47.6097,
//longitude: -122.3331

class MapPin: NSObject {
    @objc var coordinate: CLLocationCoordinate2D
    
    override init() {
        coordinate = CLLocationCoordinate2D(latitude: 47.6097, longitude: -122.3331)
    }
    
    init(newCoordinate: CLLocationCoordinate2D) {
        coordinate = newCoordinate
    }
}

extension MapPin: MKAnnotation {
    
}
