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

    var latitude: Double?
    var longitude: Double?

    var annotation = MKPointAnnotation()

    var zoomInButton: UIButton {
        let button = UIButton()
        button.setImage(UIImage(systemName: "plus.fill"), for: .normal)
        return button
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        print("經度是: \(latitude!), 緯度是: \(longitude!)")
        configureMapView()
        view.addSubview(zoomInButton)
    }

    func configureMapView () {

        // Add delegate
        mapView.delegate = self

        // region
        mapView.region = MKCoordinateRegion(
            center:    CLLocationCoordinate2D(
                latitude:  CLLocationDegrees(latitude!),
            longitude: CLLocationDegrees(longitude!)),
            latitudinalMeters: 10000,
            longitudinalMeters: 10000)
        mapView.isZoomEnabled = true
        mapView.mapType = .standard

        //annotation
        mapView.addAnnotation(annotation)
        annotation.coordinate = .init(latitude: latitude!, longitude: longitude!)


    }
}

extension MapViewController: MKMapViewDelegate {

    func mapViewDidFinishLoadingMap(_ mapView: MKMapView) {
        print("mapViewDidFinishLoadingMap")
    }

    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        print("didSelect the MKAnnotationView")
    }

}
