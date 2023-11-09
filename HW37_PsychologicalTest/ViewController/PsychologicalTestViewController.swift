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

    @IBOutlet weak var answerButtonOne: UIButton!
    @IBOutlet weak var answerButtonTwo: UIButton!
    @IBOutlet weak var answerButtonThree: UIButton!
    @IBOutlet weak var answerButtonFour: UIButton!

    @IBOutlet weak var nextButton: UIButton!

    var questionIndex: Int = 0
    var answerIndex : Int = 0


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

        let answerButtonArray: [UIButton] = [answerButtonOne, answerButtonTwo, answerButtonThree, answerButtonFour]

        for answerButtons in answerButtonArray {
            answerButtons.tintColor = UIColor.systemGray5
            answerButtons.titleLabel?.textColor = UIColor.lightGray
            answerButtons.titleLabel?.adjustsFontSizeToFitWidth = true
            answerButtons.isUserInteractionEnabled = true
            answerButtons.isEnabled = true
            view.addSubview(answerButtons)
        }

        titleLabel.text = "Question\(questionIndex + 1)"
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .left
        titleLabel.adjustsFontSizeToFitWidth = true

        contentLabel.numberOfLines             = 0
        contentLabel.textAlignment             = .left
        contentLabel.adjustsFontSizeToFitWidth = true
        contentLabel.font = UIFont.boldSystemFont(ofSize: 25)

        updateTheContentText()
    }

    func updateTheContentText () {
        // questionLabel text update
        contentLabel.text = questions[questionIndex].question

        // selectButtonOne to Four update
        answerButtonOne.setTitle(questions[questionIndex].answers[0].text, for: .normal)
        answerButtonTwo.setTitle(questions[questionIndex].answers[1].text, for: .normal)
        answerButtonThree.setTitle(questions[questionIndex].answers[2].text, for: .normal)
        answerButtonFour.setTitle(questions[questionIndex].answers[3].text, for: .normal)
    }

    // Build the logic after the nextQuestionButtonTapped
    func questionIndexLogic () {
        let countForQuestion = questions.count - 1
        print(questionIndex)
        if questionIndex < countForQuestion {
            questionIndex += 1
        } else {
           // peformSegue

        }
    }


    // 建立一個底層邏輯去判斷sender.title的內容是否符合combineChoicesData的內容
    // if yes 所選的城市 +10分，選分最高的城市 將選擇的城市 座標傳到 imaps.
    @IBAction func answerButtonOneTapped(_ sender: UIButton) {
        print(questionIndex)
        print("tpaSelectButtonOne")
        questionIndexLogic()

        // Rest of Buttons will be is NOT Enabled
        answerButtonTwo.isEnabled = false
        answerButtonThree.isEnabled = false
        answerButtonFour.isEnabled = false
    }

    @IBAction func tapSelectButtonTwo(_ sender: UIButton) {
        print(questionIndex)
        print("tapSelectButtonTwo")
        questionIndexLogic()

        // Rest of Buttons will be is NOT Enabled
        answerButtonOne.isEnabled = false
        answerButtonThree.isEnabled = false
        answerButtonFour.isEnabled = false
    }

    @IBAction func tapSelectButtonThree(_ sender: UIButton) {
        print(questionIndex)
        print("tapSelectButtonThree")
        questionIndexLogic()

        // Rest of Buttons will be is NOT Enabled
        answerButtonOne.isEnabled = false
        answerButtonTwo.isEnabled = false
        answerButtonFour.isEnabled = false
    }

    @IBAction func tapSelectButtonFour(_ sender: UIButton) {
        print(questionIndex)
        print("tapSelectButtonThree")
        questionIndexLogic()

        // Rest of Buttons will be is NOT Enabled
        answerButtonOne.isEnabled = false
        answerButtonTwo.isEnabled = false
        answerButtonThree.isEnabled = false
    }

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        print("tapNextPageButton")

        questionIndexLogic ()
        updateTheContentText()

        let answerButtonArray: [UIButton] = [answerButtonOne, answerButtonTwo, answerButtonThree, answerButtonFour]
        for answerButtons in answerButtonArray {
            answerButtons.isEnabled = true
        }
    }



}
