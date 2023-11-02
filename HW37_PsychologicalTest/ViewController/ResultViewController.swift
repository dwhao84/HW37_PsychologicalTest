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
    @IBOutlet weak var imagePageControl: UIPageControl!

    @IBOutlet weak var findYourPlaceButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        print("IntoTheResultVC")

        configureUI()
    }

    func configureUI () {
        findYourPlaceButton.setTitle("Find your Place on Map!", for: .normal)
        findYourPlaceButton.tintColor = UIColor(red: 24/255, green: 153/255, blue: 105/255, alpha: 1)
        findYourPlaceButton.isUserInteractionEnabled = true
        findYourPlaceButton.isEnabled = true
    }

    


}
