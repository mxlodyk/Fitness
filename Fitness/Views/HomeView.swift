//  HomeView.swift
//  Fitness
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            HStack {
                NavigationLink(destination: ExerciseListView()) {
                    Text("Exercise")
                }
                NavigationLink(destination: NutritionListView()) {
                    Text("Nutrition")
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
