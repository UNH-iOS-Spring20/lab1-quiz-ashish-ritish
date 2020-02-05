//  Assignment 1: Quiz App
//  Created by Ashish Shrestha and Ritish Karki on 2/4/20.
//  Copyright © 2020 Ashish Shrestha and Ritish Karki. All rights reserved.

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    // Questions array to display on the Views
    let questions: [String] = [
        "Who are the bravest soldiers in the world??",
        "What is the capital of Nepal?",
        "What is the highest mountain of world?"
    ]
    
    // Answers array to display on the view
    let answers: [String] = [
        "Gorkhali",
        "kathmandu",
        "Mt Everest"
    ]
    
    // Index that keeps tracks of question displayed and the corresponding keyboard
    var currentQuestionIndex: Int = 0
    
    // Function that increments the counter for the next questions
    @IBAction func showNextQuestion(_ sender: UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
    }
    
    // Function that maps the selected answer to the label in the view
    @IBAction func showAnswer(_ sender: UIButton){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
}

