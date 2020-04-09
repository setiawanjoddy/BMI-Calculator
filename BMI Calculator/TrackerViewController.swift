//
//  trackerViewController.swift
//  BMI Calculator
//
//  Created by Setiawan Joddy on 13/03/20.
//  Copyright © 2020 Setiawan Joddy. All rights reserved.
//

import UIKit

class RecordTableViewCell: UITableViewCell {
    
}

class TrackerViewController: UIViewController {
    
    var newHeight = ""
    var newWeight = ""
    var newBMI = ""
    
//    var ArrayHeight: [String] = []
//    var ArrayWeight: [String] = []
//    var ArrayBMI: [String] = []
//
//    var storedHeight: [String] = []
//    var storedWeight: [String] = []
//    var storedBMI: [String] = []
//
    
    // MARK: - LEMPARAN VALUE
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var BMILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        heightLabel.text = newHeight
        weightLabel.text = newWeight
        BMILabel.text = newBMI

        
    }
    
}
