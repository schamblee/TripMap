//
//  MapDetails.swift
//  TripDashboard
//
//  Created by stephanie Chamblee on 7/25/17.
//  Copyright © 2017 Stephanie Chamblee. All rights reserved.
//

import UIKit
import MapKit

class MapDetails: NSObject, MKAnnotation {
    let title: String?
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
}
