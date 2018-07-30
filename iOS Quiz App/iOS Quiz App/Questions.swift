//
//  Questions.swift
//  iOS Quiz App
//
//  Created by Woodchuck on 7/26/18.
//  Copyright © 2018 Treehouse Island. All rights reserved.
//

import Foundation


struct allQuizzesForApp {
    
    var quizArray = [quizCreator]()
    
    let quiz1 = quizCreator(question: "Who was the first 'Supervillain' character Spider-Man fought in the comics?", possibleAnswer: ["Green Goblin", "Doctor Octopus","Chameleon", "Lizard"], correctAnswer: "Chameleon", image: #imageLiteral(resourceName: "quiz1"))
    
    let quiz2 = quizCreator(question: "What year was the Spider-Man Supervillain 'Venom' created in the comics?", possibleAnswer: ["1984", "1988", "1982", "1976"], correctAnswer: "1988", image: #imageLiteral(resourceName: "quiz2"))
    
    let quiz3 = quizCreator(question: "After Captain America was 'killed' from Marvel Comics' 'Civil War,' who took Steve Rogers' place?", possibleAnswer: ["Tony Stark", "Sam Wilson", "Bucky Barnes", "William Burnside"], correctAnswer: "Bucky Barnes", image: #imageLiteral(resourceName: "quiz3"))
    
    let quiz4 = quizCreator(question: "How did the X-Men character 'Juggernaut' get his superpowers?", possibleAnswer: ["a ruby", "a genetic mutation", "a microwave transmitter", "watching too much TV"], correctAnswer: "a ruby", image: #imageLiteral(resourceName: "quiz4"))
    
    let quiz5 = quizCreator(question: "Who is listed as the #1 villain on IGN's list of 'Top 100 Comic Book Villains?'", possibleAnswer: ["Lex Luthor", "Doctor Doom", "the Joker", "Magneto"], correctAnswer: "Magneto", image: #imageLiteral(resourceName: "quiz5"))
    
    let quiz6 = quizCreator(question: "Besides Iron-Man, Thor, and Hulk, who were the other two original Avengers?", possibleAnswer: ["Black Widow and War Machine", "Captain America and Spider-Man", "Ant-Man and Wasp", "Fantastic Four and Hawkeye"], correctAnswer: "Ant-Man and Wasp", image: #imageLiteral(resourceName: "quiz6"))
    
    let quiz7 = quizCreator(question: "What kind of poison did the original Joker use on his victims?", possibleAnswer: ["Joker venom", "concentrated Acid", "cyanide", "water (it was a joke)"], correctAnswer: "Joker venom", image: #imageLiteral(resourceName: "quiz7"))
    
    let quiz8 = quizCreator(question: "Who was NOT on the original team of X-Men?", possibleAnswer: ["Marvel Girl", "Beast", "Ice-Man", "Wolverine"], correctAnswer: "Wolverine", image: #imageLiteral(resourceName: "quiz8"))
    
    let quiz9 = quizCreator(question: "What is the top-ranked Batman graphic novel of all time according to IGN?", possibleAnswer: ["The Dark Knight Returns", "The Killing Joke", "Batman: Year One", "Detective Comics #27"], correctAnswer: "Batman: Year One", image: #imageLiteral(resourceName: "quiz9"))
    
    let quiz10 = quizCreator(question: "Who from the following names are NOT actual Marvel superheroes?", possibleAnswer: ["Matador", "Ink-Man", "Frog-Man", "Gorgolla"], correctAnswer: "Ink-Man", image: #imageLiteral(resourceName: "quiz10"))
    
    
    func createQuizArray() -> [quizCreator] {
        return [quiz1, quiz2, quiz3, quiz4, quiz5, quiz6, quiz7, quiz8, quiz9, quiz10]
    }
    
    
}

