//
//  ResultViewController.swift
//  HW37_Psychological test
//
//  Created by Dawei Hao on 2023/10/31.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var contentImageView: UIImageView!
    
    @IBOutlet weak var contentTextView: UITextView!
    @IBOutlet weak var findYourPlaceButton: UIButton!

    @IBOutlet weak var pageControl: UIPageControl!

    var resultIndex: Int = 0

    // The score transfer from psyVC.
    var finalScore: Int?

    var score: Int = 0
    var cityName: String = String()
    var pageControlIndex: Int = 1

    private var latitudeInResultVC  : Double = Double()
    private var longtitudeInResultVC: Double = Double()

    var citiesContent: String = String()

//    let cityName: String = City.rawValue

    override func viewDidLoad() {
        super.viewDidLoad()

        print("IntoTheResultVC")

        configureUI()
        result()
    }


    // MARK: - Function
    private func result() {
        var citiesContent = City.allCases
        let cityScore = CityScore(score: finalScore!)
        if let city = cityScore.city {

            cityName = city.rawValue
            print(cityName)

            contentImageView.image = UIImage(named: "\(cityName)-\(pageControlIndex)")
            
            //contentTextView.text
            latitudeInResultVC = city.coordinates.latitude
            longtitudeInResultVC = city.coordinates.longitude

            contentTextView.text = city.context

        } else {
            print("No city corresponds to this score.")
        }
    }



    func configureUI() {
        // findYourPlaceButton
        findYourPlaceButton.setTitle("Find your Place belong on Map!", for: .normal)
        findYourPlaceButton.tintColor = UIColor(red: 24/255, green: 153/255, blue: 105/255, alpha: 1)
        findYourPlaceButton.isUserInteractionEnabled = true
        findYourPlaceButton.isEnabled = true
        view.addSubview(findYourPlaceButton)

        // contentImageView
        contentImageView.layer.cornerRadius = 10
        contentImageView.clipsToBounds = true
        contentImageView.isUserInteractionEnabled = true
        view.addSubview(contentImageView)

        // pageControl
        pageControl.numberOfPages = 5
        pageControl.currentPage = 0
        pageControl.currentPageIndicatorTintColor = .white
        view.addSubview(pageControl)

        // contentTextView
        contentTextView.delegate = self
        contentTextView.textColor = .darkGray
        contentTextView.isSelectable = true
        contentTextView.isFindInteractionEnabled = true
        view.addSubview(contentTextView)

    }

    // MARK: - IBAction:
    @IBAction func imageViewPageChanged(_ sender: UISwipeGestureRecognizer) {

        let photosNumber: Int = 4

        if sender.direction == .right {

            pageControlIndex = (pageControlIndex - 1 + photosNumber) % photosNumber
            contentImageView.image = UIImage(named: "\(cityName)-\(pageControlIndex + 1)")
            print(pageControlIndex)

        } else if sender.direction == .left {

            pageControlIndex += 1
            contentImageView.image = UIImage(named: "\(cityName)-\(pageControlIndex)")
            print("sender's direction == .right \(pageControlIndex)")

            if pageControlIndex > 4 {
                pageControlIndex = 1
                contentImageView.image = UIImage(named: "\(cityName)-\(pageControlIndex)")
                print("pageControlIndex > 4 && sender's direction == .right \(pageControlIndex)")

            }
        }
    }

    @IBAction func pageControlValueChanged(_ sender: UIPageControl) {

        pageControlIndex += 1
        contentImageView.image = UIImage(named: "\(cityName)-\(pageControlIndex)")

        if pageControlIndex <= 4 {
            contentImageView.image = UIImage(named: "\(cityName)-\(pageControlIndex)")
        } else {
            pageControlIndex = 1
            contentImageView.image = UIImage(named: "\(cityName)-\(pageControlIndex)")
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "locationDataTransfer" {
            let mapVC = segue.destination as? MapViewController
            mapVC?.latitude  = latitudeInResultVC
            mapVC?.longitude = longtitudeInResultVC
            print("Coordinates:\(latitudeInResultVC), \(longtitudeInResultVC)")
        }
    }
}

extension ResultViewController: UITextViewDelegate {
}
