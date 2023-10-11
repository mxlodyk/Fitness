//  ListView.swift
//  Fitness
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

struct WorkoutListView: View {
    
    @State var exercises: [ExerciseModel] = [
        ExerciseModel(name: "Glutes", repetitions: 12, sets: 4, weight: 50, rest: 1),
        ExerciseModel(name: "Back", repetitions: 12, sets: 4, weight: 50, rest: 1),
        ExerciseModel(name: "Arms", repetitions: 12, sets: 4, weight: 50, rest: 1)
    ]
    
    var body: some View {
        NavigationView {
                List {
                    ForEach(exercises) { exercise in
                        ListRowView(exercisename: exercise.name)
                        }
                    }
                .navigationTitle("Workouts")
                .navigationBarItems(
                    leading: EditButton(),
                    trailing:
                        NavigationLink("Add", destination: AddWorkoutView()))
                
            }
            }
        }
    


#Preview {
    WorkoutListView()
}

