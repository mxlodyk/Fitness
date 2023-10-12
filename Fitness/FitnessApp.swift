//  FitnessApp.swift
//  Fitness
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

@main
struct FitnessApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
            }
            .environmentObject(listViewModel)
        }
    }
}
