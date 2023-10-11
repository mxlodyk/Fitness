//
//  ListRowView.swift
//  Fitness
//
//  Created by Melody Flavel on 8/10/2023.
//

import SwiftUI

var exercise1 = ExerciseModel(name: "Glutes", repetitions: 12, sets: 4, weight: 50, rest: 1)

struct ListRowView: View {
    
    let exercisename: String
    
    var body: some View {
        HStack {
            Text(exercisename)
            NavigationLink(destination: WorkoutView()){
            }
            Spacer()
        }
    }
}

#Preview {
    ListRowView(exercisename: exercise1.name)
}

