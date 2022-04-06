//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by user on 05.04.2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var additionLabel: UILabel!
    @IBOutlet weak var backgroundView: UIImageView!
    
    
    var bmi: BmiModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = bmi?.bmi
        additionLabel.text = bmi?.advice
        backgroundView.backgroundColor = bmi?.color
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
