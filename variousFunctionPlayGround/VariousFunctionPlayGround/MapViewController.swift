//
//  MapViewController.swift
//  VariousFunctionPlayGround
//
//  Created by ryosshim on 2024/03/28.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var segmentControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        var region = MKCoordinateRegion()
        region.center = CLLocationCoordinate2DMake(35.658611, 139.745556)
        region.span.latitudeDelta = 0.02
        region.span.longitudeDelta = 0.02
        mapView.setRegion(region, animated: false)
        mapView.mapType = .standard
    }
    
    @IBAction func onSegmentChanged(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .satellite
        default:
            mapView.mapType = .hybrid
        }
    }
}
