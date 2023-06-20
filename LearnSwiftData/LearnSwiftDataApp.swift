//
//  LearnSwiftDataApp.swift
//  LearnSwiftData
//
//  Created by tom hackbarth on 6/17/23.
//

import SwiftUI
import SwiftData

@main
struct LearnSwiftDataApp: App {
   
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Person.self)
            
        }
    }
}
