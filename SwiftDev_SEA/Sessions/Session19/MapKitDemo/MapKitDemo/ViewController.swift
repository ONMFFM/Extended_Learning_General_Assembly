//
//  ViewController.swift
//  MapKitDemo
//
//  Created by Owen Pierce on 2/11/16.
//  Copyright © 2016 Owen Pierce. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!
    var locationManager = CLLocationManager()
    var currentUserLocation: CLLocation?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mapView.delegate = self
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        
        var defaultLocation = CLLocation(latitude: 47.6097,
            longitude: -122.3331)
//        mapView.centerCoordinate = defaultLocation.coordinate
        mapView.region = MKCoordinateRegion(center: defaultLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        
        var geocoder = CLGeocoder()
        geocoder.reverseGeocodeLocation(defaultLocation) { (placemarks, error) -> Void in
            if let error = error {
                print("Something went wrong omg!")
                print(error)
            } else {
                print(placemarks)
            }
        }
        
        checkAuthorizationStatus()
    }
    
    func checkAuthorizationStatus() {
        if CLLocationManager.locationServicesEnabled() {
                mapView.showsUserLocation = true
                locationManager.startUpdatingLocation()
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        checkAuthorizationStatus()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func locateButtonTapped() {
//        mapView.centerCoordinate = currentUserLocation?.coordinate
        mapView.addAnnotation(MapPin(newCoordinate: mapView.centerCoordinate))
    }
    
}

extension ViewController: MKMapViewDelegate {
//    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
//  customize the view for a map pin
//        return nil
//    }
    
}

extension ViewController: CLLocationManagerDelegate {
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentUserLocation = locations.last
    }
}
