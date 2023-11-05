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

    var index: Int = 0

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

        titleLabel.text = "Question\(index + 1)"
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .left
        titleLabel.adjustsFontSizeToFitWidth = true

        contentLabel.text = "TEST 2"
        contentLabel.numberOfLines = 0
        contentLabel.textAlignment = .left
        contentLabel.adjustsFontSizeToFitWidth = true

        index = Int.random(in: 0...combinedChoices.count - 1)

        updateContentLabel(index: index)
        updateSelectionButtons(index: index)

    }

    func updateContentLabel(index: Int) {
        if index >= 0 && index < combinedChoices.count {
            let combineDict = combinedChoices[index]

            if let question = combineDict["question"] as? String {
                contentLabel.text = question
            } else {
                print("Question is not a string or not found")
            }
        } else {
            print("Index out of range")
        }
    }

    func updateSelectionButtons(index: Int) {
        if index >= 0 && index < combinedChoices.count {
            let combineDict = combinedChoices[index]

            if let choices = combineDict["description"] as? String {
                selectButtonOne.setTitle(choices, for: .normal)
                print(choices)
            }
        }
    }

    // 建立一個底層邏輯去判斷sender.title的內容是否符合combineChoicesData的內容
    // if yes 所選的城市 +10分，選分最高的城市 將選擇的城市 座標傳到 imaps.
    @IBAction func tapSelectButtonOne(_ sender: UIButton) {
        index += 1
        print("tpaSelectButtonOne")


    }

    @IBAction func tapSelectButtonTwo(_ sender: UIButton) {
        index += 1
        print("tapSelectButtonTwo")
    }

    @IBAction func tapSelectButtonThree(_ sender: UIButton) {
        index += 1
        print("tapSelectButtonThree")
    }

    @IBAction func tapSelectButtonFour(_ sender: UIButton) {
        index += 1
        print("tapSelectButtonFour")
    }

    @IBAction func tapNextPageButton(_ sender: UIButton) {
        print("tapNextPageButton")
    }



}
