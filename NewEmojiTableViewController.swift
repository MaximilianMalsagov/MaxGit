//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by Maximilian on 03.12.2022.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", description: "", isFavourite: false)
    
    @IBOutlet var EmojiTextField: UITextField!
    
    
    @IBOutlet var NameTextField: UITextField!
    
    
    @IBOutlet var DescriptiontextField: UITextField!
    
    @IBOutlet var SaveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        upDateSaveButton()
        upDateUI()
    }
    
    private func upDateUI () {
        
        EmojiTextField.text = emoji.emoji
        NameTextField.text = emoji.name
        DescriptiontextField.text = emoji.description
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        
        upDateSaveButton()
        
    }

    
    private func upDateSaveButton() {
        let emojiText = EmojiTextField.text ?? ""
        let nameText = NameTextField.text ?? ""
        let descriptionText = DescriptiontextField.text ?? ""
        
        SaveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let emoji = EmojiTextField.text ?? ""
        let name = NameTextField.text ?? ""
        let description = DescriptiontextField.text ?? ""
        self.emoji = Emoji(emoji: emoji, name: name, description: description, isFavourite: self.emoji.isFavourite)
    }
}
