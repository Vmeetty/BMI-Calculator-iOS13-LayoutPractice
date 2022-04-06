//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiBrain = BmiBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        heightLabel.text = bmiBrain.getRoundedValueOf(slider: sender, pas: 2)
        
    }
    @IBAction func weightChanged(_ sender: UISlider) {
        weightLabel.text = bmiBrain.getRoundedValueOf(slider: sender, pas: 0)
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        bmiBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        performSegue(withIdentifier: "resultSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultSegue" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmi = bmiBrain.getBMI()
        }
    }
    
}

