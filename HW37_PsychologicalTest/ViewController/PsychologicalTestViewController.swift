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

    @IBOutlet weak var nextButton: UIButton!

    var questionIndex: Int = 0
    var answerIndex : Int = 0

    let selectButtonArray: [UIButton] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        print("IntoThePsyVC")

        updateUI ()


    }

    func updateUI () {
        nextButton.setTitle("Next Question", for: .normal)
        nextButton.tintColor = UIColor(red: 24/255, green: 153/255, blue: 105/255, alpha: 1)
        nextButton.isUserInteractionEnabled = true
        nextButton.isEnabled = true

        let selectButtonArray: [UIButton] = [selectButtonOne, selectButtonTwo, selectButtonThree, selectButtonFour]

        for selectionButtons in selectButtonArray {
            selectionButtons.tintColor = UIColor.systemGray5
            selectionButtons.titleLabel?.textColor = UIColor.lightGray
            selectionButtons.titleLabel?.adjustsFontSizeToFitWidth = true
            selectionButtons.isUserInteractionEnabled = true
            selectionButtons.isEnabled = true
            view.addSubview(selectionButtons)
        }

        titleLabel.text = "Question\(questionIndex + 1)"
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .left
        titleLabel.adjustsFontSizeToFitWidth = true

        contentLabel.numberOfLines             = 0
        contentLabel.textAlignment             = .left
        contentLabel.adjustsFontSizeToFitWidth = true
        contentLabel.font = UIFont.boldSystemFont(ofSize: 25)

        updateContent()
    }

    func updateContent () {
        // questionLabel text update
        contentLabel.text = questions[questionIndex].question

        // selectButtonOne to Four update
        selectButtonOne.setTitle(questions[questionIndex].answers[0].text, for: .normal)
        selectButtonTwo.setTitle(questions[questionIndex].answers[1].text, for: .normal)
        selectButtonThree.setTitle(questions[questionIndex].answers[2].text, for: .normal)
        selectButtonFour.setTitle(questions[questionIndex].answers[3].text, for: .normal)
    }

    // Build the logic after the nextQuestionButtonTapped
    func questionCount () {
        let countForQuestion = questions.count - 1
        print(questionIndex)
        if questionIndex < countForQuestion {
            questionIndex = Int.random(in: 0...countForQuestion)
        } else {
           questionIndex -= 1
        }
    }


    // 建立一個底層邏輯去判斷sender.title的內容是否符合combineChoicesData的內容
    // if yes 所選的城市 +10分，選分最高的城市 將選擇的城市 座標傳到 imaps.
    @IBAction func tapSelectButtonOne(_ sender: UIButton) {
        print(questionIndex)
        print("tpaSelectButtonOne")
        questionCount()

        // Rest of Buttons will be is NOT Enabled
        selectButtonTwo.isEnabled = false
        selectButtonThree.isEnabled = false
        selectButtonFour.isEnabled = false
    }

    @IBAction func tapSelectButtonTwo(_ sender: UIButton) {
        print(questionIndex)
        print("tapSelectButtonTwo")
        questionCount()

        // Rest of Buttons will be is NOT Enabled
        selectButtonOne.isEnabled = false
        selectButtonThree.isEnabled = false
        selectButtonFour.isEnabled = false
    }

    @IBAction func tapSelectButtonThree(_ sender: UIButton) {
        print(questionIndex)
        print("tapSelectButtonThree")
        questionCount()

        // Rest of Buttons will be is NOT Enabled
        selectButtonOne.isEnabled = false
        selectButtonTwo.isEnabled = false
        selectButtonFour.isEnabled = false
    }

    @IBAction func tapSelectButtonFour(_ sender: UIButton) {
        print(questionIndex)
        print("tapSelectButtonThree")
        questionCount()

        // Rest of Buttons will be is NOT Enabled
        selectButtonOne.isEnabled = false
        selectButtonTwo.isEnabled = false
        selectButtonThree.isEnabled = false
    }

    @IBAction func tapNextPageButton(_ sender: UIButton) {
        print("tapNextPageButton")
        questionCount ()

        updateContent()

    }



}
