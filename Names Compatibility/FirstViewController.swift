//
//  ViewController.swift
//  Names Compatibility
//
//  Created by Maximilian on 27.11.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var PartnerNameTF: UITextField!
    @IBOutlet var YourNameTF: UITextField!
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? ResultViewController else { return }
        
        destinationVC.firstName = YourNameTF.text
        destinationVC.secondName = PartnerNameTF.text
    }
    
    @IBAction func ResultButtonTapped() {
        guard let firstName = YourNameTF.text, let secondName = PartnerNameTF.text else { return }
        if firstName.isEmpty || secondName.isEmpty {
            showAlert(title: "Names are missing",
                      message: "Please enter both Names")
            return
        }
        performSegue(withIdentifier: "Go to result", sender: nil)
    }
    
    @IBAction func unwindSegueToFirstVC(segue:UIStoryboardSegue) {
        YourNameTF.text = ""
        PartnerNameTF.text = ""
    }
    
}
extension FirstViewController {
    
    private func showAlert(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert,animated: true)
    }
}

extension FirstViewController : UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == YourNameTF {
            PartnerNameTF.becomeFirstResponder()
        }else {
            ResultButtonTapped()
        }
        return true
    }
}
