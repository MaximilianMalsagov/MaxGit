//
//  ResultViewController.swift
//  Names Compatibility
//
//  Created by Maximilian on 27.11.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var NamesLabel: UILabel!
    
    @IBOutlet var ResultLabel: UILabel!
    
    
    @IBOutlet var ProgressView: UIProgressView!
    
    
    var firstName: String!
    var secondName: String!
    
    
    private var resultValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultValue = findResult()
        ResultLabel.text = resultValue.formatted(.percent)
        
        NamesLabel.text = "\(firstName ?? "") and \(secondName ?? "")"
        
        ProgressView.progress = Float(resultValue) / 100
        ProgressView.transform = ProgressView.transform.scaledBy(x: 1, y: 4)
        
    }
    private func findValue(for name: String) -> Int {
        
        var count = 0
        
        for character in name.lowercased() {
            
            switch character {
                
            case "a", "d", "c", "y" :
                count += 1
            case "f", "e", "w", "s" :
                count += 2
            case "z","x","v", "m":
                count += 3
            case  "g", "k", "l":
                count += 4
            case  "r", "j" :
                count += 5
            default :
                count += 0
                
            }
        }
        return count
        
    }
    
    private func findResult() -> Int {
        
        var result = 0
        
        let firstValue = findValue(for: firstName)
        let secondValue = findValue(for: secondName)
        let absDifference = abs(firstValue - secondValue)
        
        switch absDifference {
            
        case 0,1,2 :
            result = 100
        case 3,4 :
            result = 65
        case 5 :
            result = 50
        case 6:
            result = 40
        default:
            result = 30
        }
        return result
            
            
            
        }
        
        
        
    }
    
    
    
    
    

