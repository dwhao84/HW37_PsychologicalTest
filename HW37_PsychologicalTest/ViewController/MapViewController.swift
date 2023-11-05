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

    var latitude: Double = 23.6978
    var longitude: Double = 120.9605

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
            latitudinalMeters: 10000,
            longitudinalMeters: 10000)
        mapView.isZoomEnabled = true
        mapView.mapType = .hybrid

        //annotation



    }


}

extension MapViewController: MKMapViewDelegate {

    func mapViewDidFinishLoadingMap(_ mapView: MKMapView) {
        print("mapViewDidFinishLoadingMap")
    }
}
