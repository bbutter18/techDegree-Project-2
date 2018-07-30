//
//  ViewController.swift
//  iOS Quiz App
//
//  Created by Woodchuck on 7/26/18.
//  Copyright © 2018 Treehouse Island. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    
    // MARK: - Properties
    
    let quiz = Quiz()
    
  
    
    // MARK: - Outlets
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var textField: UILabel!
    
    @IBOutlet weak var Choice1: UIButton!
    @IBOutlet weak var Choice2: UIButton!
    @IBOutlet weak var Choice3: UIButton!
    @IBOutlet weak var Choice4: UIButton!
    
    @IBOutlet weak var PlayAgain: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        quiz.startOfGameSound()
        displayQuizQuestion()
        
    }

    
    // MARK: - Helpers
    
    func displayQuizQuestion() {
    
        let quizQuestion = quiz.displayQuestion()
        
        displayBackground()
        activateButtons()
        displayButtons()
        
        textField.text = quizQuestion.question
        Choice1.setTitle(quizQuestion.possibleAnswer[0], for: .normal)
        Choice2.setTitle(quizQuestion.possibleAnswer[1], for: .normal)
        Choice3.setTitle(quizQuestion.possibleAnswer[2], for: .normal)
        Choice4.setTitle(quizQuestion.possibleAnswer[3], for: .normal)
        
        PlayAgain.isHidden = true
    }
    
    
    func displayBackground() {
        backgroundImage.image = quiz.displayBackgroundImage(atQuestion: quiz.indexOfSelectedQuestion)
    
    }
    
    
    func displayButtons() {
        Choice1.isHidden = false
        Choice2.isHidden = false
        Choice3.isHidden = false
        Choice4.isHidden = false
    
    }
    
    func hideButtons() {
        Choice1.isHidden = true
        Choice2.isHidden = true
        Choice3.isHidden = true
        Choice4.isHidden = true
    }
    
    func loadNextRound(delay seconds: Int) {
        // Converts a delay in seconds to nanoseconds as signed 64 bit integer
        let delay = Int64(NSEC_PER_SEC * UInt64(seconds))
        // Calculates a time value to execute the method given current time and delay
        let dispatchTime = DispatchTime.now() + Double(delay) / Double(NSEC_PER_SEC)
        
        // Executes the nextRound method at the dispatch time on the main queue
        DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
            self.nextRound()
        }
    }
    
    func nextRound() {
        if quiz.questionsAsked == numberOfQuizzesPerGame {
         textField.text = "You got \(quiz.correctQuestions) out of 5 questions correct."
            PlayAgain.isHidden = false
            hideButtons()
            
        } else {
            displayQuizQuestion()
            displayButtons()
        }
    
    }
    
    
    func deactivateButtons() {
        Choice1.isUserInteractionEnabled = false
        Choice2.isUserInteractionEnabled = false
        Choice3.isUserInteractionEnabled = false
        Choice4.isUserInteractionEnabled = false
        
    
    }
    
    func activateButtons() {
        Choice1.isUserInteractionEnabled = true
        Choice2.isUserInteractionEnabled = true
        Choice3.isUserInteractionEnabled = true
        Choice4.isUserInteractionEnabled = true
    }
    
    
    func quizResults(status: Bool) {
        if status {
            quiz.correctQuestions += 1
            quiz.rightAnswerSound()
            textField.text = "Correct! You got it!"
        } else {
            quiz.wrongAnswerSound()
            textField.text = "Bummer! That is Incorrect!"
        }
        
        deactivateButtons()
        loadNextRound(delay: 2)
    }
    

    // MARK: - Actions
    
    
    
   

    @IBAction func Choice1(_ sender: UIButton) {
        
        var isCorrect: Bool
        isCorrect = quiz.checkAnswer(answer: (Choice1.titleLabel?.text)!, atQuestion: quiz.indexOfSelectedQuestion)
        quizResults(status: isCorrect)
        
    }
    
    
    @IBAction func Choice2(_ sender: UIButton) {
        
        var isCorrect: Bool
        isCorrect = quiz.checkAnswer(answer: (Choice2.titleLabel?.text)!, atQuestion: quiz.indexOfSelectedQuestion)
        quizResults(status: isCorrect)
        
    }
  
    
    
    @IBAction func Choice3(_ sender: UIButton) {
        
        var isCorrect: Bool
        isCorrect = quiz.checkAnswer(answer: (Choice3.titleLabel?.text)!, atQuestion: quiz.indexOfSelectedQuestion)
        quizResults(status: isCorrect)
    }
    
    
    @IBAction func playAgain(_ sender: UIButton) {
        
        PlayAgain.isHidden = false
        nextRound()
        quiz.questionsAsked = 0
        
    }
    
    
    @IBAction func Choice4(_ sender: UIButton) {
    
        var isCorrect: Bool
        isCorrect = quiz.checkAnswer(answer: (Choice4.titleLabel?.text)!, atQuestion: quiz.indexOfSelectedQuestion)
        quizResults(status: isCorrect)
    }
    
}



































