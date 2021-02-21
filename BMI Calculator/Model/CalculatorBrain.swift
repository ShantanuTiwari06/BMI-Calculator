//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Shantanu on 21/02/21.
//


import UIKit

struct CalculatorBrain {
    
//    var bmi: Float = 0.0
//    var bmi : Float?
    
    // Store the structure BMI in var - bmi .
    var bmi : BMI?
    
//    MARK:- Get BMI Value Fn - START
    // call when segue will prepare by prepare() in - calc screen.
    func getBMIValue() -> String {
        
// MARK:- Check for nil value - Method - 1.
//        if bmi != nil {
//            // bmi comes from below fn - calculateBMI()
//            let bmiTo1DecimalPlace = String(format: "%.1f", bmi!)
//            // see this value in prepare() in calc screen .
//            return bmiTo1DecimalPlace
//        }else{
//            return "0.0"
//        }
//
// MARK:- Optional Binding - Method - 2.
//        if let safeBMI = bmi {
//            // bmi comes from below fn - calculateBMI()
//            let bmiTo1DecimalPlace = String(format: "%.1f", safeBMI)
//            // see this value in prepare() in calc screen .
//            return bmiTo1DecimalPlace
//        }else{
//            return "0.0"
//        }
// MARK:- Nil Coalescing Operator - Method - 3.
//            // bmi comes from below fn - calculateBMI()
//            let bmiTo1DecimalPlace = String(format: "%.1f", bmi ?? 0.0)
//            // see this value in prepare() in calc screen .
//            return bmiTo1DecimalPlace
//
// MARK:- Optional Chaining - Method - 4.
            let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
    }
    //    MARK:- Get BMI Value Fn - END

    
    
//    MARK:- Get Advice Fn
    func getAdvice() -> String {
        // bmi.advice - means, -> advice from Struct - BMI & it's var advice .
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        // bmi.color - means, -> color from Struct - BMI & it's var color .
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
        
//    MARK:- Calculate BMI Fn
    // call when calc btn pressed in - calc screen .
    mutating func calculateBMI(h: Float, w: Float) {
        // this bmi value pass to above fn - getBMIValue()
//        bmi = w / (h * h)
        
        // For Method - 4 .
        let bmiValue = w / (h * h)
        
        // Conditions for diff advice & bg-color according to bmiValue .
        if bmiValue < 18.5 {
            print("Under Weight!")
//            Store these values in Struct - BMI as a initializers .
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }else if bmiValue < 24.9 {
            print("Normal Weight!")
            bmi = BMI(value: bmiValue, advice: "Fit", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }else{
            print("Over Weight!")
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1))
        }
    }
    
}
