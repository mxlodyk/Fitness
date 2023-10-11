//
//  ExerciseModel.swift
//  Fitness
//
//  Created by Melody Flavel on 11/10/2023.
//

import Foundation

struct ExerciseModel: Identifiable {
    let id: String = UUID().uuidString
    public let name: String
    let repetitions: Int
    let sets: Int
    let weight: Double
    let rest: Int
}
