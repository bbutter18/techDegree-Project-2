//
//  QuizObject.swift
//  iOS Quiz App
//
//  Created by Woodchuck on 7/26/18.
//  Copyright © 2018 Treehouse Island. All rights reserved.
//

import Foundation
import UIKit


struct quizCreator {
    var question: String
    var possibleAnswer: [String]
    var correctAnswer: String
    var image: UIImage
    
    init(question: String, possibleAnswer: [String], correctAnswer: String, image: UIImage) {
        
        self.question = question
        self.possibleAnswer = possibleAnswer
        self.correctAnswer = correctAnswer
        self.image = image
    }
}


