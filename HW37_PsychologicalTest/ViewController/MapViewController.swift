//
//  MapViewController.swift
//  HW37_PsychologicalTest
//
//  Created by Dawei Hao on 2023/11/1.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!

    var latitude: Double = Double()
    var longitude: Double = Double()

    var annotation = MKPointAnnotation()

    override func viewDidLoad() {
        super.viewDidLoad()

        print("經度是: \(latitude), 緯度是: \(longitude)")
        print(cityCoordinates.count)
        configureMapView()

    }

    func configureMapView () {

        // Add delegate
        mapView.delegate = self

        // region
        mapView.region = MKCoordinateRegion(
            center:    CLLocationCoordinate2D(
            latitude:  CLLocationDegrees(latitude),
            longitude: CLLocationDegrees(longitude)),
            latitudinalMeters: 1000,
            longitudinalMeters: 1000)

        //annotation



    }


}

extension MapViewController: MKMapViewDelegate {

}
