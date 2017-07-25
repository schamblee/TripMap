//
//  TripMapViewController.swift
//  TripDashboard
//
//  Created by stephanie Chamblee on 7/18/17.
//  Copyright © 2017 Stephanie Chamblee. All rights reserved.
//

import UIKit
import MapKit

class TripMapViewController: UIViewController {
    
    @IBOutlet weak var tripMap: MKMapView!
    
    
    // set zoom
    let regionRadius: CLLocationDistance = 10000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius * 2.0, regionRadius * 2.0)
        
        tripMap.setRegion(coordinateRegion, animated: true)
    // show details on map
        let mapDetail = MapDetails(title: "Team 1",
            locationName: "The Haven Project",
            discipline: "Chiang Mai",
            coordinate: CLLocationCoordinate2D(latitude: 18.8038360000, longitude: 98.9720810000))
        let mapDetail2 = MapDetails(title: "Team 2",
            locationName: "YWAM - Chang Mai",
            discipline: "Chiang Mai",
            coordinate: CLLocationCoordinate2D(latitude: 18.7311880000, longitude: 98.9339640000))
        let mapDetail3 = MapDetails(title: "Team 3",
            locationName: "Nikki's Place Agape Home",
            discipline: "Chiang Mai",
            coordinate: CLLocationCoordinate2D(latitude: 18.8673030000, longitude: 99.0222460000))
        let mapDetail4 = MapDetails(title: "Team 4",
            locationName: "Abba House Foundation",
            discipline: "Chiang Mai",
            coordinate: CLLocationCoordinate2D(latitude: 18.8868550000, longitude: 99.0099670000))
        let mapDetail5 = MapDetails(title: "Team 4",
            locationName: "Remember Nhu",
            discipline: "Chiang Mai",
            coordinate: CLLocationCoordinate2D(latitude: 18.8705466, longitude: 99.1362407))

        
        tripMap.addAnnotation(mapDetail)
        tripMap.addAnnotation(mapDetail2)
        tripMap.addAnnotation(mapDetail3)
        tripMap.addAnnotation(mapDetail4)
        tripMap.addAnnotation(mapDetail5)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // set initial location
        let initialLocation = CLLocation(latitude: 18.8038360000, longitude: 98.9720810000)
        centerMapOnLocation(location: initialLocation)
        

    }

    override func awakeFromNib() {
        self.tabBarItem.title = "Trip Map"
    }

}
