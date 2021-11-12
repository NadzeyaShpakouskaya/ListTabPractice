//
//  ListTabPracticeApp.swift
//  ListTabPractice
//
//  Created by Nadzeya Shpakouskaya on 12/11/2021.
//

import SwiftUI

@main
struct ListTabPracticeApp: App {
    
    @StateObject private var dataManager = DataManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataManager)
        }
    }
}
