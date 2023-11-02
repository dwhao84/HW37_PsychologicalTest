//
//  PsychologicalTestViewController.swift
//  HW37_Psychological test
//
//  Created by Dawei Hao on 2023/10/31.
//

import UIKit

class PsychologicalTestViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!

    @IBOutlet weak var selectButtonOne: UIButton!
    @IBOutlet weak var selectButtonTwo: UIButton!
    @IBOutlet weak var selectButtonThree: UIButton!
    @IBOutlet weak var selectButtonFour: UIButton!

    @IBOutlet weak var nextPageButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        print("IntoThePsyVC")

        configureUI ()

    }

    func configureUI () {
        nextPageButton.setTitle("Next Page", for: .normal)
        nextPageButton.tintColor = UIColor(red: 24/255, green: 153/255, blue: 105/255, alpha: 1)
        nextPageButton.isUserInteractionEnabled = true
        nextPageButton.isEnabled = true

        let selectButtonArray: [UIButton] = [selectButtonOne, selectButtonTwo, selectButtonThree, selectButtonFour]

        for selectionButtons in selectButtonArray {
            selectionButtons.tintColor = UIColor.systemGray5
            selectionButtons.titleLabel?.textColor = UIColor.lightGray
            selectionButtons.isUserInteractionEnabled = true
            selectionButtons.isEnabled = true
            view.addSubview(selectionButtons)
        }

        selectButtonOne.setTitle("TEST 1", for: .normal)
        selectButtonTwo.setTitle("TEST 2", for: .normal)
        selectButtonThree.setTitle("TEST 3", for: .normal)
        selectButtonFour.setTitle("TEST 4", for: .normal)

        titleLabel.text = "TEST"
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .left
        titleLabel.adjustsFontSizeToFitWidth = true

        contentLabel.text = "TEST 2"
        contentLabel.numberOfLines = 0
        contentLabel.textAlignment = .left
        contentLabel.adjustsFontSizeToFitWidth = true
    }

    

    @IBAction func tapSelectButtonOne(_ sender: UIButton) {
        print("tpaSelectButtonOne")
    }

    @IBAction func tapSelectButtonTwo(_ sender: UIButton) {
        print("tapSelectButtonTwo")
    }

    @IBAction func tapSelectButtonThree(_ sender: UIButton) {
        print("tapSelectButtonThree")
    }

    @IBAction func tapSelectButtonFour(_ sender: UIButton) {
        print("tapSelectButtonFour")
    }

    @IBAction func tapNextPageButton(_ sender: UIButton) {
        print("tapNextPageButton")
    }



}
