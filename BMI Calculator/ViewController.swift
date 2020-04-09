//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Setiawan Joddy on 03/03/20.
//  Copyright © 2020 Setiawan Joddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightView: UIView!
    @IBOutlet weak var heightView: UIView!
    @IBOutlet weak var quotesView: UIView!
    
    @IBOutlet weak var countButton: UIButton!
    
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var BMIStatusLabel: UILabel!
    
    var idealCount = 0.0
    var getWeight: Double = 70
    var getHeight: Double = 150
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weightView.layer.cornerRadius = 20
        heightView.layer.cornerRadius = 20
        quotesView.layer.cornerRadius = 20
        BMILabel.text = "-- Kg/m²"
        BMIStatusLabel.text = "Press start to begin!"
        heightLabel.text = "150 Centimeters"
        weightLabel.text = "70 Kilograms"
    }
    
    @IBAction func weightUISlider(_ sender: UISlider) {
        let weightCurrentValue = Int(sender.value)
        getWeight = Double(sender.value)
        weightLabel.text = "\(weightCurrentValue) Kilograms"
    }
    
    @IBAction func heightUISlider(_ sender: UISlider) {
        let heightCurrentValue = Int(sender.value)
        getHeight = Double(sender.value)
        heightLabel.text = "\(heightCurrentValue) Centimeters"
    }
    
    @IBAction func countStart(_ sender: Any) {
        idealCount = ((getWeight) / pow((getHeight/100), 2))
        let convIdealCount = String(format: "%.1f", idealCount)
        BMILabel.text = "\(convIdealCount) Kg/m²"
        
        if (idealCount < 18.5) {
            BMIStatusLabel.text = "You're Underweight"
            
        }
        
        else if (idealCount > 18.5 && idealCount < 22.9) {
            BMIStatusLabel.text = "Congrats, You're Normal!"
        }
        
        else if (idealCount > 22.9 ) {
            BMIStatusLabel.text = "You have an Obesity"
        }
    
    }
    
}
