//
//  modelQuestion.swift
//  MVC
//
//  Created by Eddy Segura on 5/12/18.
//  Copyright © 2018 Eddy Segura. All rights reserved.
//

import Foundation
class modelQuestion {
    
    let answer : Bool
    let questionText : String
    
    init (text: String , correctAnswer: Bool){
        
        questionText = text
        answer = correctAnswer
        
    }
}
