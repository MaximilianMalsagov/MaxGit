//
//  Question.swift
//  Personal Quiz
//
//  Created by Maximilian on 26.11.2022.
//

import Foundation


struct Question {
     
    let title : String
    let type: ResponseType
    let answers : [Answer]
    
    
}

enum ResponseType{

case single
case multiple
case ranged
}

struct Answer {
    
    let title : String
    let type: AnimalType
    
}

enum AnimalType: Character  {
    
    case lion = "🦁"
    case wolf = "🐺"
    case bear = "🐻"
    case eagle = "🦅"
    
    var definition : String {
        switch self {
            
        
        case .lion:
            return "Вам нравится быть с друзьями"
        case .wolf:
           return  "Вам нравится быть собой"
        case .bear:
          return  "Вам нравится быть смелым"
        case .eagle:
           return  "Вам нравится летать"
        }
        
        
    }
}

extension Question {
    
    static func getFunctions() -> [Question] {
       [
       Question(title: "Какую пищу предпочитаете?",
                type: .single,
                answers:[
                    Answer(title: "Steak", type: .bear),
                    Answer(title: "Beef", type: .wolf),
                    Answer(title: "Bird", type: .eagle),
                    Answer(title: "Pork", type: .lion)
                    ]
                
                
                
                
                ),
       Question(
        title: "Что вам нравиться больше?",
                type: .multiple,
                answers:[
                    Answer(title: "fight", type: .bear),
                    Answer(title: "cut", type: .wolf),
                    Answer(title: "fly", type: .eagle),
                    Answer(title: "scream", type: .lion)
                    ]
        ),
       
       Question(
        title: "Любите ли Вы кататься на машине?",
                type: .multiple,
                answers:[
                    Answer(title: "hate", type: .bear),
                    Answer(title: "prefer", type: .wolf),
                    Answer(title: "i always fly", type: .eagle),
                    Answer(title: "tear", type: .lion)
                    ]
       
       ),
       
       
       
       
       
       ]
        
    }
    
    
}
