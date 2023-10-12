//  AddExercisesView.swift
//  Fitness
//  Created by Melody Flavel on 9/10/2023.

import SwiftUI

struct AddExercisesView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @Binding var newName: String
    @State var textFieldText0: String = ""
    @State var textFieldText1: String = ""
    @State var textFieldText2: String = ""
    @State var textFieldText3: String = ""
    @State var textFieldText4: String = ""
    
    var body: some View {
        
        ScrollView{
            
            Image("Workout Details")
            
            VStack {
                
                Text("EXERCISE")
                    .withTextFormatting()
                TextField("", text: $textFieldText0)
                    .withTextFieldFormatting()
                
                Text("REPETITIONS")
                    .withTextFormatting()
                TextField("", text: $textFieldText1)
                    .withTextFieldFormatting()
                
                Text("SETS")
                    .withTextFormatting()
                TextField("", text: $textFieldText2)
                    .withTextFieldFormatting()
                
                Group {
                    Text("WEIGHT")
                        .withTextFormatting()
                    
                    HStack {
                        
                        TextField("", text: $textFieldText3)
                            .withTextFieldFormatting()
                        
                        Menu("KG") {
                            Text("LB")
                        }
                        .withTextFormatting()
                    }
                    .padding(.leading, 130)
                    .padding(.trailing, 100)
                    
                    Text("REST")
                        .withTextFormatting()
                    
                    HStack {
                        
                        TextField("", text: $textFieldText4)
                            .withTextFieldFormatting()
                        
                        Menu("SEC") {
                            Text("MIN")
                        }
                        .withTextFormatting()
                    }
                    .padding(.leading, 130)
                    .padding(.trailing, 90)
                }
                
                Button(action: saveButtonPressed, label: {
                    Text("Save".uppercased())
                        .withButtonFormatting()
                        .padding(.top, 20)
                })
            }
            .padding(.leading, 35)
            .padding(.trailing, 35)
    
        }
    }
    
    func saveButtonPressed() {
        listViewModel.addExercise(workout: newName, exercise: textFieldText0, repetitions: textFieldText1, sets: textFieldText2, weight: textFieldText3, rest: textFieldText4)
        presentationMode.wrappedValue.dismiss()
        presentationMode.wrappedValue.dismiss()
    }
    
}

#Preview {
    NavigationView{
        AddExercisesView(newName: .constant("Temp"))
    }
    .environmentObject(ListViewModel())
}
