//
//  CountViewController.swift
//  mangu029P4
//
//  Created by Matthew Anguelo on 2/4/20.
//  Copyright © 2020 Matthew Anguelo. All rights reserved.
//

import Foundation
import UIKit

class CountViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
       countLabel.text = "\(GameDB.shared.getPlayCount())"
    }
    
    
}
