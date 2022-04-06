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
            color = .gray
        case 18.5...24.9:
            adviceStr = "Normal"
            color = .blue
        case _ where multipiler > 24.9:
            adviceStr = "Overweight"
            color = .brown
        default : break
        }
        print(adviceStr)
        print(color)
        bmi = BmiModel(bmi: bmiStr, advice: adviceStr, color: color ?? .black)
    }
    
    func getBMI() -> String {
        return bmi?.bmi ?? "nil"
    }
    
    func getRoundedValueOf(slider: UISlider, pas: Int) -> String {
        return String(format: "%.\(pas)f", slider.value)
    }
    
}
