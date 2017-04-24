//
//  MapView.swift
//  W1N
//
//  Created by Stefano Miceli on 24/04/17.
//  Copyright © 2017 µEffort. All rights reserved.
//

import UIKit
import GoogleMaps
import MapKit
import CoreLocation

class MapView: UIViewController,MKMapViewDelegate,CLLocationManagerDelegate  {

    @IBOutlet var mapView: MKMapView!
    
   
   
    var locationManager = CLLocationManager()
    var spostato = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.delegate = self
        
        if CLLocationManager.authorizationStatus() == .notDetermined {
            locationManager.requestWhenInUseAuthorization()
    
        }
        
        locationManager.startUpdatingLocation()
        
      
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if(spostato == 0){
            let userLocation: CLLocation = locations[0]
            
            let latitude:CLLocationDegrees = userLocation.coordinate.latitude
            
            let longitude:CLLocationDegrees = userLocation.coordinate.longitude
            
            let delta: CLLocationDegrees = 0.005
            
            let span:MKCoordinateSpan = MKCoordinateSpanMake(delta, delta)
            
            let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
            
            let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
            
            let distance:CLLocationDistance = CLLocationDistance(delta)
            
            let direction:CLLocationDirection = CLLocationDirection()
            
            //      mapView.setRegion(region, animated: false)
            mapView.camera = MKMapCamera(lookingAtCenter: location, fromDistance: distance, pitch: 100.0, heading: direction)
            mapView.mapType = MKMapType.standard
            mapView.setRegion(region, animated: false)
            let pin = MKPointAnnotation()
            
            pin.coordinate.latitude = userLocation.coordinate.latitude
            pin.coordinate.longitude = userLocation.coordinate.longitude
            pin.title = "Ciao"
            mapView.addAnnotation(pin)
            spostato = spostato+1
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
