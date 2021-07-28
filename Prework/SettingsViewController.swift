//
//  SettingsViewController.swift
//  Prework
//
//  Created by Cedric Bone on 7/28/21.
//

import UIKit

class SettingsViewController: UIViewController {
    
    //Access UserDefaults
    let defaults = UserDefaults.standard

    

    @IBOutlet weak var customTipLabel: UILabel!
    @IBOutlet weak var customTipSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Settings"
    }
    
    @IBAction func slider(_ sender: Any) {
        // Sets the slider's value to customTipLabel
        let sliderValue = customTipSlider.value
        customTipLabel.text = String(format: "%.2f%%", sliderValue)
        
        // Set an float value for some key.
        defaults.set(sliderValue, forKey: "Custom Tip")
    }

}
