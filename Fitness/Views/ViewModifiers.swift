//  ViewModifiers.swift
//  Fitness
//  Created by Melody Flavel on 12/10/2023.

import Foundation
import SwiftUI

let themeColour = Color(hue: 0.591, saturation: 0.395, brightness: 1.0)

struct ButtonViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color(themeColour))
            .cornerRadius(10)
            .shadow(radius: 10)
    }
}

extension View {
    
    func withButtonFormatting() -> some View {
        modifier(ButtonViewModifier())
    }
}

struct TextFieldViewModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(themeColour))
            .padding(.horizontal)
            .frame(height: 55)
            .background(Color(hue: 0.591, saturation: 0.155, brightness: 0.98))
            .cornerRadius(10)
    }
}

extension View {
    func withTextFieldFormatting() -> some View {
        modifier(TextFieldViewModifier())
    }
}

struct TextViewModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(Color(themeColour))
    }
}

extension View {
    func withTextFormatting() -> some View {
        modifier(TextViewModifier())
    }
}
