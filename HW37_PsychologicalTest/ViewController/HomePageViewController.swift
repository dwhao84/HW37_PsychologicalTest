//
//  HomePageViewController.swift
//  HW37_Psychological test
//
//  Created by Dawei Hao on 2023/10/31.
//

import UIKit

class HomePageViewController: UIViewController {

    @IBOutlet weak var letsGoButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitle: UILabel!

    var index: Int = 0
    let pictureNameArray: [String] = [
        "HomePage_Tokyo",
        "HomePage_Toronto",
        "HomePage_Rome",
        "HomePage_London",
        "HomePage_Sydney"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()

        print("IntoTheHomePageVC")

    }

    func configureUI () {

        // letsGoButton
        letsGoButton.setTitle("Let's go", for: .normal)
        letsGoButton.tintColor = UIColor(red: 24/255, green: 153/255, blue: 105/255, alpha: 1)

        // titleLabel
        titleLabel.text = "Choose Your Own Adventure"
        titleLabel.textColor = UIColor(red: 24/255, green: 153/255, blue: 105/255, alpha: 1)

        // subtitle
        subtitle.text =
        "A test to bring you to where you belong"
        subtitle.textColor = UIColor.systemGray3

        // imageView
        imageView.image = UIImage(named: pictureNameArray[index])
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 175
        imageView.clipsToBounds = true
        view.addSubview(imageView)

        // pageControl
        pageControl.tintColor = .white
        pageControl.currentPageIndicatorTintColor = UIColor(red: 24/255, green: 153/255, blue: 105/255, alpha: 1)
        view.addSubview(pageControl)

    }

    @IBAction func pageControlValueChanged(_ sender: UIPageControl) {
        index = sender.currentPage
        imageView.image = UIImage(named: pictureNameArray[index])
    }





}
