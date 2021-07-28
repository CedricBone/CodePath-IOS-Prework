//
//  ViewController.swift
//  Prework
//
//  Created by Cedric Bone on 7/28/21.
//

import UIKit

class ViewController: UIViewController {

    // Access UserDefaults
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from the text feild input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Gets custom tip value
        let customTip = defaults.double(forKey: "Custom Tip")
        
        // Get tip by multiplying bill and tip percentage
        let tipPercentages = [0.15, 0.18, customTip / 100]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        // Total is the bill plus the tip
        let total = bill + tip
        
        // Updated Tip Amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Updated Total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        print("view will appear")
//        // This is a good place to retrieve the default tip percentage from UserDefaults
//        // and use it to update the tip amount
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        print("view did appear")
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        print("view will disappear")
//    }
//
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        print("view did disappear")
//    }
    
}

