//
//  FirstViewController.swift
//  mangu029P4
//
//  Created by Matthew Anguelo on 2/4/20.
//  Copyright © 2020 Matthew Anguelo. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GameDB.shared.loadQuestions()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        questionLabel.text = GameDB.shared.getQuestion()
    }
}

