//  ListView.swift
//  Fitness
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

struct ExerciseListView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Text("Glute Workout")
                }
                .navigationTitle("Workouts")
                
                NavigationLink(destination: AddWorkoutView()) {
                    Text("New Workout")
                }
            }
            }
        }
    }


#Preview {
    ExerciseListView()
}
