//  AddExercisesView.swift
//  Fitness
//  Created by Melody Flavel on 9/10/2023.

import SwiftUI

struct AddExercisesView: View {
    
    @State var textFieldText1: String = ""
    @State var textFieldText2: String = ""
    @State var textFieldText3: String = ""
    @State var textFieldText4: String = ""
    
    var body: some View {
        ScrollView{
            Image("Workout Details")
            VStack {
                Text("REPETITIONS")
                    .font(.headline)
                    .foregroundColor(Color(hue: 0.591, saturation: 0.395, brightness: 1.0))
                TextField(" ", text: $textFieldText1)
                    .foregroundColor(Color(hue: 0.591, saturation: 0.67, brightness: 0.994))
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(hue: 0.591, saturation: 0.155, brightness: 0.98))
                    .cornerRadius(10)
                
                Text("SETS")
                    .font(.headline)
                    .foregroundColor(Color(hue: 0.591, saturation: 0.395, brightness: 1.0))
                TextField(" ", text: $textFieldText2)
                    .foregroundColor(Color(hue: 0.591, saturation: 0.67, brightness: 0.994))
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(hue: 0.591, saturation: 0.155, brightness: 0.98))
                    .cornerRadius(10)
                
                Text("WEIGHT")
                    .font(.headline)
                    .foregroundColor(Color(hue: 0.591, saturation: 0.395, brightness: 1.0))
                HStack {
                    TextField(" ", text: $textFieldText3)
                        .foregroundColor(Color(hue: 0.591, saturation: 0.67, brightness: 0.994))
                        .padding(.horizontal)
                        .frame(height: 55)
                        .background(Color(hue: 0.591, saturation: 0.155, brightness: 0.98))
                    .cornerRadius(10)
                    
                    Menu("KG") {
                        Text("LB")
                    }
                    .font(.headline)
                    .foregroundColor(Color(hue: 0.591, saturation: 0.395, brightness: 1.0))
                }
                .padding(.leading, 130)
                .padding(.trailing, 100)
                
                Text("REST")
                    .font(.headline)
                    .foregroundColor(Color(hue: 0.591, saturation: 0.395, brightness: 1.0))
                HStack {
                    TextField(" ", text: $textFieldText4)
                        .foregroundColor(Color(hue: 0.591, saturation: 0.67, brightness: 0.994))
                        .padding(.horizontal)
                        .frame(height: 55)
                        .background(Color(hue: 0.591, saturation: 0.155, brightness: 0.98))
                    .cornerRadius(10)
                    
                    Menu("SEC") {
                        Text("MIN")
                    }
                    .font(.headline)
                    .foregroundColor(Color(hue: 0.591, saturation: 0.395, brightness: 1.0))
                }
                .padding(.leading, 130)
                .padding(.trailing, 90)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Save".uppercased())
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color(hue: 0.591, saturation: 0.395, brightness: 1.0))
                        .cornerRadius(10)
                        .padding(.top, 20)
                })
                
            }
            .padding(.leading, 35)
            .padding(.trailing, 35)
         
        }
    }
}

#Preview {
    NavigationView{
        AddExercisesView()
    }
}
