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

    override func viewDidLoad() {
        super.viewDidLoad()

        print("IntoTheResultVC")

        configureUI()
        result()
    }



    func result() {
        let cityScore = CityScore(score: finalScore!)
        if let city = cityScore.city {
            print("The city for your score is: \(city.rawValue)")
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
        contentImageView.image = UIImage(named: "")
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


    @IBAction func imageViewPageChanged(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .left {

        } else if sender.direction == .right {

        }
    }

    @IBAction func pageControlValueChanged(_ sender: UIPageControl) {

    }






}

extension ResultViewController: UITextViewDelegate {

}
