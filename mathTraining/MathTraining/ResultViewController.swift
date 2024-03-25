//
//  ResultViewController.swift
//  MathTraining
//
//  Created by ryosshim on 2024/03/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    var result = 0.0
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var messageLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "\(round(result))%"
        if result < 50 {
            messageLabel.text = "PLEASE TRY AGAIN!"
        } else if result < 80 {
            messageLabel.text = "NICE"
        } else {
            messageLabel.text = "YOU ARE GREAT!"
        }
    }
}
