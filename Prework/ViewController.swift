//
//  ViewController.swift
//  Prework
//
//  Created by Cedric Bone on 7/28/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from the text feild input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get tip by multiplying bill and tip percentage
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        // Total is the bill plus the tip
        let total = bill + tip
        
        // Updated Tip Amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Updated Total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

