//
//  ViewController.swift
//  Randomizer
//
//  Created by Maximilian on 22.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var minimumValue: UILabel!
    @IBOutlet var RandomButton: UIButton!
    @IBOutlet var randomValue: UILabel!
    @IBOutlet var maximumValue: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        RandomButton.layer.cornerRadius = 10
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard    let settingsVC = segue.destination as? SettingsViewController else {return}
        settingsVC.minimumValue = minimumValue.text
        settingsVC.maximumValue = maximumValue.text 
    }
    
    
    @IBAction func tapRandomNumberButton() {
        
        let minimumNumber = Int(minimumValue.text ?? "") ?? 0
        let maximumNumber = Int(maximumValue.text ?? "") ?? 100
        
        randomValue.text = Int.random(in: minimumNumber...maximumNumber).formatted()
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        
        guard let settingsVC = segue.source as? SettingsViewController else {return }
        minimumValue.text = settingsVC.MinimumTextField.text
        maximumValue.text = settingsVC.MaximumTextField.text
    }
    
    
    

}

