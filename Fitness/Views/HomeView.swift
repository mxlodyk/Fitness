//  HomeView.swift
//  Fitness
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView{
            VStack (spacing: 20){
                Image("VitalFit Logo")
                    .padding(.bottom, 20)
                NavigationLink(destination: WorkoutListView()) {
                    Text("EXERCISE")
                        .withButtonFormatting()
                }
                NavigationLink(destination: NutritionListView()) {
                    Text("NUTRITION")
                        .withButtonFormatting()
                }
            }
            .padding()
        }
        .padding(.bottom, 500)
    }
}

#Preview {
    HomeView()
}
