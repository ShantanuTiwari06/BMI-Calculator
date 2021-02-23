//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Shantanu on 09/02/21.
//

import UIKit

class CalculateViewController: UIViewController {
    
//    var bmiValue = "0.0"
    
    // store model-CalcBrain to var of it .
//    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
//        print(sender.value)
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight =  weightSlider.value
        
//        let bmi = weight / (height * height)
//        bmiValue = String(format: "%.1f", bmi)
//
//        call the func - calculateBMI(h,w) from model - calculatorBrain .
//        calculatorBrain.calculateBMI(h: height, w: weight)
        
        // Go to result screen .
//        self.performSegue(withIdentifier: "goToResult", sender: self)
        performSegue(withIdentifier: "goToResult", sender: self)

//        print(bmi)
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f", bmi)
//        self.present(secondVC, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            
//            destinationVC.bmiValue = bmiValue
            // Store value of getBMIValue() from model - calculatorBrain & store it to bmiValue - of Result screen.
//            destinationVC.bmiValue = calculatorBrain.getBMIValue()
           //  Store value of getAdvice() from model - calculatorBrain & store it to advice - of Result screen.
//            destinationVC.advice = calculatorBrain.getAdvice()
            // Store value of getColor() from model - calculatorBrain & store it to color - of Result screen.
//            destinationVC.color = calculatorBrain.getColor()

        }
    }
}
