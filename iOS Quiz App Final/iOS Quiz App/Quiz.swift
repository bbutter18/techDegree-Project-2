//
//  Quiz.swift
//  iOS Quiz App
//
//  Created by Woodchuck on 7/26/18.
//  Copyright © 2018 Treehouse Island. All rights reserved.
//

import Foundation



import GameKit
import AudioToolbox
import UIKit




//MARK: Properties

let numberOfQuizzesPerGame = 5
var quizLibrary = allQuizzesForApp()
var questionSet = quizLibrary.createQuizArray()


//Quiz Game

class Quiz {
    
    let questions = questionSet
    var questionsAsked = 0
    var correctQuestions = 0
    var indexOfSelectedQuestion = 0
    var askedQuestions: [Int]
    let quizzesPerGame = numberOfQuizzesPerGame
    
    
    init() {
        askedQuestions = []
    }
    
    
    
    func displayQuestion() -> quizCreator {
        
        indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        
        while (askedQuestions.contains(indexOfSelectedQuestion)) {
            indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        }
        
        askedQuestions.append(indexOfSelectedQuestion)
        questionsAsked += 1
        return questions[indexOfSelectedQuestion]
        
    }
    
    
    
    func checkAnswer(answer: String, atQuestion indexOf: Int) -> Bool {
        
        if (answer == (questions[indexOf].correctAnswer)) {
            return true
        } else {
            return false
        }
        
    }
    
   
    
    func displayBackgroundImage(atQuestion indexOf: Int) -> UIImage {
        let img = questions[indexOf].image
        return img
    }
    
    
    func loadSound(sound: String, of type: String) -> SystemSoundID {
        var gameSound: SystemSoundID = 0
        let path = Bundle.main.path(forResource: sound, ofType: type)
        let soundUrl = URL(fileURLWithPath: path!)
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &gameSound)
        return gameSound
    }
    
        func playSound(quizSound: SystemSoundID) {
        AudioServicesPlaySystemSound(quizSound)
    }
    
    func startOfGameSound() {
        var sound: SystemSoundID = 0
        sound = loadSound(sound: "GameSound", of: "wav")
        playSound(quizSound: sound)
    }
    
    func rightAnswerSound() {
        var sound: SystemSoundID = 0
        sound = loadSound(sound: "correctAnswer", of: "wav")
        playSound(quizSound: sound)
        
    }
    
    func wrongAnswerSound() {
        var sound: SystemSoundID = 0
        sound = loadSound(sound: "incorrectAnswer", of: "wav")
        playSound(quizSound: sound)
        
    }
    
}















