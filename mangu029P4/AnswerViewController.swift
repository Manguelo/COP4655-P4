//
//  SecondViewController.swift
//  mangu029P4
//
//  Created by Matthew Anguelo on 2/4/20.
//  Copyright © 2020 Matthew Anguelo. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!

    override func viewWillAppear(_ animated: Bool) {
        answerLabel.text = GameDB.shared.getAnswer()
    }
}

