//
//  QuizQuastions.swift
//  QuizTest
//
//  Created by Zahraa Herz on 10/01/2023.
//

import Foundation
import UIKit

struct QuizQuastions {
    
    let quastions = [
        Quiz(quastion: "Muslims believe that Muhammad was one of many prophets.", answer: "True"),
        Quiz(quastion: "After Muhammad started receiving revelations, his preaching was immediately welcomed by most of the people of Mecca.", answer: "False"),
        Quiz(quastion: "The hijra is the term for the migration of Muhammad and his followers from Mecca to Cairo.", answer: "False"),
        Quiz(quastion: "The language of the Qur’an is Arabic.", answer: "True"),
        Quiz(quastion: "There is only one source of Islamic law—the Sunnah.", answer: "False" )
        
    ]
    
    var arrayCounter = 0
    var score = 0

    mutating func nextQuastion(){
        if arrayCounter > quastions.count {
            arrayCounter = 0
        } else {
            arrayCounter += 1
        }
    }
    mutating func checkAnswer(userAnswer : String) -> Bool {
        
        if  quastions[arrayCounter].answer == userAnswer {
            score += 1

            return true
        } else {
            return false
        }
    }
    
    func getQuastion() -> String {
        
        let quastion = quastions[arrayCounter].quastion
        
        return quastion
    }
    
    func getProgressBar() -> Float {
        
        let progress = Float(arrayCounter + 1) / Float(quastions.count)
        
        return progress
    }
    
     func getScore() -> Int{
        
        return score

    }
        
}

