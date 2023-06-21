//
//  ContentView.swift
//  LearnSwiftData
//
//  Created by tom hackbarth on 6/17/23.
//

import SwiftUI
import SwiftData

/// This is the main view
///
/// it shows a list of people
///
struct ContentView: View {
    
    /// This is the SwiftData context that allows CloudKit Syncing
    @Environment(\.modelContext) private var context
    
    /// the people that have been added. This is Synced from CloudKit
    @Query(sort: \.age, order: .forward) var people: [Person]
    
    var body: some View {
        NavigationStack{
            VStack {
                List {
                    ForEach(people, id: \.id) { person in
                        PersonRow(person: person)
                    }
                    .onDelete(perform: { indexSet in
                        if let index = indexSet.first{
                            context.delete(people[index])
                        }
                    })
                }
            }
            .onAppear(){
                
            }
            .navigationTitle("Learn Swift Data")
            .toolbar {
                Button("Add") {
                    let person = Person(
                        name: "Test Person",
                        age: Utils.getNextAge(people: people)
                    )
                    let address = Address(
                        street: "123 Main Street",
                        city: "Marrietta",
                        state: "Ga",
                        zip: "30062"
                    )
                    
                    person.address = address
                    context.insert(person)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
