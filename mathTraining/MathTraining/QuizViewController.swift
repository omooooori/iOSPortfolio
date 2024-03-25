//
//  QuizViewController.swift
//  MathTraining
//
//  Created by ryosshim on 2024/03/25.
//

import UIKit

class QuizViewController: UIViewController {
    
    let totalNumber = 10
    var correctNumber = 0
    var questionIndex = 0
    var answerIndex = 0
    
    @IBOutlet var leftNumberLabel: UILabel!
    @IBOutlet var centerNumberLabel: UILabel!
    @IBOutlet var rightNumberLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setQuestions()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultVC = segue.destination as? ResultViewController {
            resultVC.result = Double(correctNumber) / Double(totalNumber) * 100.0
        }
    }
    
    func setQuestions() {
        let leftNum = Int(arc4random_uniform(10))
        var centerNum = Int(arc4random_uniform(10))
        answerIndex = Int(arc4random_uniform(4))
        
        switch answerIndex {
        case 0:
            rightNumberLabel.text = "\(leftNum + centerNum)"
        case 1:
            rightNumberLabel.text = "\(leftNum - centerNum)"
        case 2:
            rightNumberLabel.text = "\(leftNum * centerNum)"
        default:
            if centerNum == 0 {
                centerNum = 1
            }
            rightNumberLabel.text = "\(leftNum / centerNum)"
        }
        
        leftNumberLabel.text = "\(leftNum)"
        centerNumberLabel.text = "\(centerNum)"
    }
    
    @IBAction func onTappedOperator(sender: UIButton) {
        if sender.tag - 1 == answerIndex {
            correctNumber += 1
        }
        questionIndex += 1
        if (questionIndex > totalNumber) {
            performSegue(withIdentifier: "QuizToResult", sender: nil)
        } else {
            setQuestions()
        }
    }
}
