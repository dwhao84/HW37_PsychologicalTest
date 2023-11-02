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

    var index: Int = 0

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
        titleLabel.text = "Choose your adventure"
        titleLabel.textColor = UIColor(red: 24/255, green: 153/255, blue: 105/255, alpha: 1)

        let pictureNameArray: [String] = ["HomePage_Tokyo", "HomePage_Toronto", "HomePage_Rome"]
        let arrayNumber = pictureNameArray.count
        index = Int.random(in: 0...arrayNumber - 1)

        // imageView
        imageView.image = UIImage(named: pictureNameArray[index])
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 30
        imageView.clipsToBounds = true

        pageControl.numberOfPages = 0



    }

}
