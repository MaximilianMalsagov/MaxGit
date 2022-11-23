//
//  SettingsViewController.swift
//  Randomizer
//
//  Created by Maximilian on 22.11.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var MinimumTextField: UITextField!
    
    @IBOutlet var MaximumTextField: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MinimumTextField.text = minimumValue
        MaximumTextField.text = maximumValue
        
        
    }
    
    
    @IBAction func CancelButton() {
        
       dismiss(animated: true)
        
        
    }
    
}
