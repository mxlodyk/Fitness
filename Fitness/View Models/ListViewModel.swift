//
//  ListViewModel.swift
//  Fitness
//
//  Created by Melody Flavel on 11/10/2023.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var exercises: [ExerciseModel] = []
    //@State var newName = ""
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newExercises = [
            ExerciseModel(workout: "Glutes", exercise: "Hip Thrusts", repetitions: "12", sets: "4", weight: "50", rest: "1"),
            ExerciseModel(workout: "Back", exercise: "Rows", repetitions: "8", sets: "3", weight: "40", rest: "2"),
            ExerciseModel(workout: "Arms", exercise: "Bicep Curls", repetitions: "10", sets: "4", weight: "30", rest: "1")
        ]
        exercises.append(contentsOf: newExercises)
    }
    
    func deleteExercise(indexSet: IndexSet){
        exercises.remove(atOffsets: indexSet)
    }
    func moveExercise(from: IndexSet, to: Int){
        exercises.move(fromOffsets: from, toOffset: to)
    }
    
    func addExercise(workout: String, exercise: String, repetitions: String, sets: String, weight: String, rest: String) {
        let newExercise = ExerciseModel(workout: workout, exercise: exercise, repetitions: repetitions, sets: sets, weight: weight, rest: rest)
        exercises.append(newExercise)
    }
}
