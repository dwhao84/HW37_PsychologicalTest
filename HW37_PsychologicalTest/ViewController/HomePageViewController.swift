//
//  HomePageViewController.swift
//  HW37_Psychological test
//
//  Created by Dawei Hao on 2023/10/31.
//

import UIKit

class HomePageViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var letsGoButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()

        print("IntoTheHomePageVC")

    }


    func configureUI () {
        letsGoButton.setTitle("Let's go", for: .normal)
        letsGoButton.tintColor = UIColor(red: 0/255, green: 144/255, blue: 81/255, alpha: 1)
    }

}
