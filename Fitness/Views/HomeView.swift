//  HomeView.swift
//  Fitness
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView{
            VStack {
                Image("VitalFit Logo")
                    .padding(.bottom, 20)
                NavigationLink(destination: WorkoutListView()) {
                    Text("EXERCISE")
                        .font(.headline)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color(hue: 0.591, saturation: 0.395, brightness: 1.0))
                        .cornerRadius(10)
                }
                NavigationLink(destination: NutritionListView()) {
                    Text("NUTRITION")
                        .font(.headline)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color(hue: 0.591, saturation: 0.395, brightness: 1.0))
                        .cornerRadius(10)
                }
            }
            .padding(16)
        }
        .padding(.bottom, 500)
    }
}

#Preview {
    HomeView()
}
