//
//  BmiBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by user on 06.04.2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

struct BmiBrain {
    
    var bmi : BmiModel?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let height = height
        let weight = weight
        let multipiler = weight / pow(height, 2)
        let bmiStr = String(format: "%.1f", multipiler)
        var adviceStr = ""
        var color: UIColor?
        switch multipiler {
        case _ where multipiler < 18.5:
            adviceStr = "Underweight"
            color = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        case _ where multipiler > 24.9:
            adviceStr = "Overweight"
            color = #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)
        default :
            adviceStr = "Normal"
            color = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
//        default : break
        }
        print(adviceStr)
        print(color)
        bmi = BmiModel(bmi: bmiStr, advice: adviceStr, color: color ?? .black)
    }
    
    func getBMI() -> BmiModel {
        return bmi ?? BmiModel(bmi: "00", advice: "nothing", color: .brown)
    }
    
    func getRoundedValueOf(slider: UISlider, pas: Int) -> String {
        return String(format: "%.\(pas)f", slider.value)
    }
    
}
