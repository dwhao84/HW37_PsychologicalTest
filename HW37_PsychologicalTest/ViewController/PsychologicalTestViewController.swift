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

    var questionArray: Int = questions.count - 1

    var sumScore: Int = 0

    var answerButtonArray: [UIButton] {
        [ answerButtonOne,
          answerButtonTwo,
          answerButtonThree,
          answerButtonFour
        ]
    }

    var scoreValue: [Int] = [Int] ()

    override func viewDidLoad() {
        super.viewDidLoad()

        print("IntoThePsyVC")
        updateUI ()

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "locationTransfer" {
            let resultVC = segue.destination as? ResultViewController
            resultVC?.finalScore = sumScore
            print(resultVC?.finalScore ?? 0)
        }
    }

    func updateUI () {
        nextButton.setTitle("Next Question", for: .normal)
        nextButton.tintColor = UIColor(red: 24/255, green: 153/255, blue: 105/255, alpha: 1)
        nextButton.isUserInteractionEnabled = true
        nextButton.isEnabled = true

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

    // MARK: - updateTheContentText
    func updateTheContentText () {

        // titleLabel
        titleLabel.text = "Question\(questionIndex + 1)"

        // questionLabel text update
        contentLabel.text = questions[questionIndex].question

        // setTitle transfer
        answerButtonOne.setTitle(questions[questionIndex].answers[0].text, for: .normal)
        answerButtonTwo.setTitle(questions[questionIndex].answers[1].text, for: .normal)
        answerButtonThree.setTitle(questions[questionIndex].answers[2].text, for: .normal)
        answerButtonFour.setTitle(questions[questionIndex].answers[3].text, for: .normal)

        // sender.tag transfer
        answerButtonOne.tag   = questions[questionIndex].answers[0].score
        answerButtonTwo.tag   = questions[questionIndex].answers[1].score
        answerButtonThree.tag = questions[questionIndex].answers[2].score
        answerButtonFour.tag  = questions[questionIndex].answers[3].score
    }

    private func scoreCalculation () {
        sumScore = scoreValue.reduce(0, { $0 + $1 } )
        print(sumScore)
    }

    // Build the logic after the nextQuestionButtonTapped
    private func questionIndexLogic () {
        if questionIndex < questionArray {
            questionIndex += 1
            scoreCalculation()
        } else {
           // peformSegue
           scoreCalculation()
           performSegue(withIdentifier: "locationTransfer", sender: self)
        }
    }


    // MARK: - IBAction
    //建立一個底層邏輯去判斷sender.title的內容是否符合combineChoicesData的內容
    // if yes 所選的城市 +10分，選分最高的城市 將選擇的城市 座標傳到 imaps.
    @IBAction func answerButtonOneTapped(_ sender: UIButton) {
        print(questionIndex)
        print("answerButtonOneTapped")
        questionIndexLogic()

        scoreValue.append(sender.tag)
        print(sender.tag)
        print(scoreValue)

        scoreCalculation()

        // Rest of Buttons will be is NOT Enabled
        answerButtonTwo.isEnabled = false
        answerButtonThree.isEnabled = false
        answerButtonFour.isEnabled = false
    }

    @IBAction func answerButtonTwoTapped(_ sender: UIButton) {
        print(questionIndex)
        print("answerButtonTwoTapped")

        scoreValue.append(sender.tag)
        print(sender.tag)
        print(scoreValue)

        scoreCalculation()

        // Rest of Buttons will be is NOT Enabled
        answerButtonOne.isEnabled = false
        answerButtonThree.isEnabled = false
        answerButtonFour.isEnabled = false
    }

    @IBAction func answerButtonThreeTapped(_ sender: UIButton) {
        print(questionIndex)
        print("answerButtonThreeTapped")

        scoreValue.append(sender.tag)
        print(sender.tag)
        print(scoreValue)

        scoreCalculation()

        // Rest of Buttons will be is NOT Enabled
        answerButtonOne.isEnabled = false
        answerButtonTwo.isEnabled = false
        answerButtonFour.isEnabled = false
    }

    @IBAction func answerButtonFourTapped(_ sender: UIButton) {
        print(questionIndex)
        print("answerButtonFourTapped")

        scoreValue.append(sender.tag)
        print(sender.tag)
        print(scoreValue)

        scoreCalculation()

        // Rest of Buttons will be is NOT Enabled
        answerButtonOne.isEnabled = false
        answerButtonTwo.isEnabled = false
        answerButtonThree.isEnabled = false
    }

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        print("tapNextPageButton")

        questionIndexLogic ()
        updateTheContentText()

        for answerButtons in answerButtonArray {
            answerButtons.isEnabled = true
        }
    }
}
