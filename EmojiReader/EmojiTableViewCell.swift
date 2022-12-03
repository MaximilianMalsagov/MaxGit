//
//  EmojiTableViewCell.swift
//  EmojiReader
//
//  Created by Maximilian on 02.12.2022.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    
    @IBOutlet var EmojiLabel: UILabel!
    
    @IBOutlet var NameLabel: UILabel!
    
    
    @IBOutlet var DscriptionLabel: UILabel!
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func set(object: Emoji) {
        
        self.EmojiLabel.text = object.emoji
        self.NameLabel.text = object.name
        self.DscriptionLabel.text = object.description
        
        
    }

   
}
