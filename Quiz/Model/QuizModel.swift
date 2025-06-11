//
//  QuizModel.swift
//  Quiz
//
//  Created by Dominic Montalto on 09/05/2025.
//

import Foundation

struct QuizModel {
    let questions: [Question]
}

struct Question: Identifiable {
    let id: String = UUID().uuidString
    let prompt: String
    let choices: [String]
    let correctAnswer: String
}
