//
//  ViewController.swift
//  Quiz
//
//  Created by Ashish Shrestha on 2/4/20.
//  Copyright © 2020 Ashish Shrestha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "Who are the bravest soldiers in the world??",
        "What is the capital of Nepal?",
        "Where is the highest mountain of world?"
    ]
    
    let answers: [String] = [
        "Gorkhali",
        "kathmandu",
        "Mt Everest"
    ]
    
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

