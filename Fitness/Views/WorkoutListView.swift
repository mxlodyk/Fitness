//  ListView.swift
//  Fitness
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

struct WorkoutListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        NavigationView {
                List {
                    ForEach(listViewModel.exercises) { exercise in
                        ListRowView(workoutname: exercise.workout)
                        }
                    .onDelete(perform: listViewModel.deleteExercise)
                    .onMove(perform: listViewModel.moveExercise)
                    }
                .navigationTitle("Workouts")
                .navigationBarItems(
                    leading: EditButton(),
                    trailing:
                        NavigationLink("Add", destination: AddWorkoutView(newName: "")))
                }
    }
}
    
        
    


#Preview {
    WorkoutListView()
    .environmentObject(ListViewModel())
}

