//
//  MapViewController.swift
//  Saratoga Chamber App
//
//  Created by Clifford Yin on 7/19/16.
//  Copyright © 2016 Clifford Yin. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

/* The controller that displays the locations of the types of areas the user seeks to locate. */
class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    var searchTerm = ""
    var userSearch = [MKPlacemark]()
    let locationManager = CLLocationManager()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init(coder aDecoder: NSCoder)  {
        super.init(coder: aDecoder)!
    }
    
    override func viewDidLoad() {
        
        if let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }
        
        // Start updating the location
        self.mapView.delegate = self
        self.locationManager.delegate = self
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.startUpdatingLocation()
        self.mapView.showsUserLocation = true
        locationManager.desiredAccuracy = kCLLocationAccuracyBest

        super.viewDidLoad()
    }
    
    // Drop pins based on the given search term
    func pins() {
        let request = MKLocalSearchRequest()
        request.naturalLanguageQuery = searchTerm
        request.region = mapView.region
        let term = searchTerm
        
        let search = MKLocalSearch(request: request)
        search.start{ response, error in
            guard response != nil else {
                print("There was an error searching for: \(request.naturalLanguageQuery) error: \(error)")
                return
            }
            
            for item in (response!.mapItems){
                if let mi = item as? MKMapItem {
                    self.userSearch.append(mi.placemark)
                    let dropPin = MKPointAnnotation()
                    dropPin.coordinate = mi.placemark.coordinate
                    dropPin.title = "\(mi.name!)"
                    print("SPOTS: \(dropPin.title)")
                    self.mapView.addAnnotation(dropPin)
                }
            }
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        self.locationManager.stopUpdatingLocation()
        
        // Finds places in the region while centered at this coordinate
        
        let location: CLLocation = locations[0]
        let center = CLLocationCoordinate2D(latitude: (location.coordinate.latitude), longitude: (location.coordinate.longitude))
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.04, longitudeDelta: 0.04))
        
        self.mapView.setRegion(region, animated: true)
        self.mapView.showsUserLocation = true
        
        // Triangulating location takes time. Thus, a small delay is required between it and generating the pins.
        let when = DispatchTime.now() + 2
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.pins()
        }
    }
}


