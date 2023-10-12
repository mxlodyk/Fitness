//
//  ListRowView.swift
//  Fitness
//
//  Created by Melody Flavel on 8/10/2023.
//

import SwiftUI

var exercise1 = ExerciseModel(workout: "Glutes", exercise: "Hip Thrusts", repetitions: "12", sets: "4", weight: "50", rest: "1")

struct ListRowView: View {
    
    let workoutname: String
    
    var body: some View {
        HStack {
            Text(workoutname)
            NavigationLink(destination: ExerciseListView()){
            }
            Spacer()
        }
    }
}

#Preview {
    ListRowView(workoutname: exercise1.workout)
}

