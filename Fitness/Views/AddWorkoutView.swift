//  AddWorkoutView.swift
//  Fitness
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

struct AddWorkoutView: View {
    
    @State var newName : String
    @EnvironmentObject var listViewModel: ListViewModel
    let themeColour = Color(hue: 0.591, saturation: 0.395, brightness: 1.0)
    
    var body: some View {
        ScrollView{
            Image("New Workout")
            Text("NAME")
                .withTextFormatting()
                .padding(.bottom, -50)
            VStack {
                TextField("", text: $newName)
                    .withTextFieldFormatting()
                
                NavigationLink(destination: AddExercisesView(newName: $newName)){
                    Text("Save".uppercased())
                        .withButtonFormatting()
                }
            }
            .padding(16)
        }
    }
}

#Preview {
    NavigationView{
        AddWorkoutView(newName: "")
    }
    .environmentObject(ListViewModel())
}
