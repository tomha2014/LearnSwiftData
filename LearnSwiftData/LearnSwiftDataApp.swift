//
//  LearnSwiftDataApp.swift
//  LearnSwiftData
//
//  Created by tom hackbarth on 6/17/23.
//

import SwiftUI
import SwiftData
        

let config = ModelConfiguration(nil,
                                schema: Schema( [Person.self]),
                                inMemory: false,
                                readOnly: false,
                                sharedAppContainerIdentifier: nil,
                                cloudKitContainerIdentifier: "iCloud.com.thackbarth.LearnSwiftData")

                                    
@main
struct LearnSwiftDataApp: App {
   
    let container = try! ModelContainer (for: Person.self, config)
    
    var body: some Scene {
        WindowGroup {
            ContentView()
//                .modelContainer(for: [Person.self])
        }
        .modelContainer (container)
        
    }
}
