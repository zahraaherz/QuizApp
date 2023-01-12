//
//  ViewController.swift
//  QuizTest
//
//  Created by Zahraa Herz on 09/01/2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: -

    @IBOutlet var quastion: UILabel!
    
    @IBOutlet var prograssBar: UIProgressView!
    
    @IBOutlet var trueButton: UIButton!
    
    @IBOutlet var falseButton: UIButton!
        
    @IBOutlet var score: UILabel!
    
    var quizQuastions = QuizQuastions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateArrayData()
        // Do any additional setup after loading the view.
    }

    //MARK: - buttons

    @IBAction func answerButton(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let answer = quizQuastions.checkAnswer(userAnswer: userAnswer)
        
        if  answer  {
             sender.backgroundColor = UIColor.green
        } else {
             sender.backgroundColor = UIColor.gray
        }

        Timer.scheduledTimer(timeInterval: 0.3 , target: self, selector: #selector(updateArrayData) , userInfo: nil, repeats: false)

        quizQuastions.arrayCounter += 1

    }
    
    @objc func updateArrayData(){
        if quizQuastions.arrayCounter < quizQuastions.quastions.count {
            
            
            quastion.text = quizQuastions.getQuastion()
            prograssBar.progress = quizQuastions.getProgressBar()
            
        } else{
            
            quizQuastions.score = 0
            quizQuastions.arrayCounter = 0
            quastion.text = quizQuastions.getQuastion()
            prograssBar.progress = quizQuastions.getProgressBar()

        }
        score.text = String("Score \(quizQuastions.getScore())")

        trueButton.backgroundColor = UIColor(red: 0.9725, green: 0.9137, blue: 0.7176, alpha: 1.0)
        falseButton.backgroundColor = UIColor(red: 0.9725, green: 0.9137, blue: 0.7176, alpha: 1.0)
        
    }
    
    
}

