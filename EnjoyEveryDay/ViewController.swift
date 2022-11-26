//
//  ViewController.swift
//  EnjoyEveryDay
//
//  Created by Maximilian on 26.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var InfoLabel: UILabel!
    
    
    @IBOutlet var ResultButton: UIButton!
    
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func DatePicker(_ sender: UIDatePicker) {
        
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    @IBAction func ResultButtonTapped() {

        InfoLabel.text = " Ты наслаждаешься уже \(numberOfDays)"

    }
    
}

