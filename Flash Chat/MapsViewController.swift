//
//  MapsViewController.swift
//  Flash Chat
//
//  Created by Treinamento on 9/2/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit
import GoogleMaps

class MapsViewController: UIViewController{

    let locationManager = CLLocationManager ()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//         Do any additional setup after loading the view.
        GMSServices.provideAPIKey("AIzaSyA1BKEcpCVaiZm5Lmhq4RPgldsC230_DlQ")
        let camera = GMSCameraPosition.camera(withLatitude: -23.501560 , longitude: -46.848130, zoom: 14)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
         let currentLocation = CLLocationCoordinate2DMake(-23.501560, -46.848130)
        let marker = GMSMarker(position: currentLocation)
        marker.title = "My location"
        marker.map = mapView
}
}

