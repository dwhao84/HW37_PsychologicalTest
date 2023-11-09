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

    var currentPictureIndex: Int = 0
    
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
        imageView.image = UIImage(named: pictureNameArray[currentPictureIndex])
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 175
        imageView.clipsToBounds = true
        imageView.isUserInteractionEnabled = true
        view.addSubview(imageView)

        // pageControl
        pageControl.tintColor = .white
        pageControl.currentPageIndicatorTintColor = UIColor(red: 24/255, green: 153/255, blue: 105/255, alpha: 1)
        view.addSubview(pageControl)

    }

    @IBAction func pageControlValueChanged(_ sender: UIPageControl) {
        currentPictureIndex = sender.currentPage
        imageView.image = UIImage(named: pictureNameArray[currentPictureIndex])
    }

    @IBAction func changePageBySwipe(_ sender: UISwipeGestureRecognizer) {

        if sender.direction == .left {
            // Avoid currentPictureIndex out of range, so ADD the pictureNameArray.count into the currentPictureIndex to ensure the currentPictureIndex won't be negative.
            currentPictureIndex = (currentPictureIndex - 1 + pictureNameArray.count ) % pictureNameArray.count
            imageView.image = UIImage(named: pictureNameArray[currentPictureIndex])
            print(currentPictureIndex)
            print("Left Swipe")

        } else if sender.direction == .right {
            currentPictureIndex = (currentPictureIndex + 1) % pictureNameArray.count
            imageView.image = UIImage(named: pictureNameArray[currentPictureIndex])
            print(currentPictureIndex)
            print("Right Swipe")
        }

    }




}
