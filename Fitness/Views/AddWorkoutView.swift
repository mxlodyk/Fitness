//  AddWorkoutView.swift
//  Fitness
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

struct AddWorkoutView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView{
            Image("New Workout")
            Text("NAME")
                .font(.headline)
                .foregroundColor(Color(hue: 0.591, saturation: 0.395, brightness: 1.0))
                .padding(.bottom, -50)
            VStack {
                TextField(" ", text: $textFieldText)
                    .foregroundColor(Color(hue: 0.591, saturation: 0.67, brightness: 0.994))
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(hue: 0.591, saturation: 0.155, brightness: 0.98))
                    .cornerRadius(10)
                
                NavigationLink(destination: AddExercisesView()){
                    Text("Save".uppercased())
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color(hue: 0.591, saturation: 0.395, brightness: 1.0))
                        .cornerRadius(10)
                }
            }
            .padding(16)
        }
    }
}

#Preview {
    NavigationView{
        AddWorkoutView()
    }
}
