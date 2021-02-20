//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Shantanu on 20/02/21.
//

import UIKit

class ResultViewController: UIViewController {

    // get the value from getBMIValue() -> Brain -> CalcScreen .
    var bmiValue : String?
    
    // get the value from getAdvice() -> Brain -> CalcScreen .
    var advice : String?
    
    // get the value from getColor() -> Brain -> CalcScreen .
    var color :  UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Value Label .
        bmiLabel.text = bmiValue
        // Advice Label .
        adviceLabel.text = advice
        // Bg-Color Label .
        view.backgroundColor = color
    }
    
    // back to calc screen after recalculatePressed .
    @IBAction func recalculatePressed(_ sender: UIButton) {
//        self.dismiss(animated: true, completion: nil)
        dismiss(animated: true, completion: nil)
    }
    
}

