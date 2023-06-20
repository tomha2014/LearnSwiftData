//
//  ContentView.swift
//  LearnSwiftData
//
//  Created by tom hackbarth on 6/17/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var context
    @Query  var people: [Person]
    
    
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
            .navigationTitle("Learn Swift Data")
            .toolbar {
                Button("Add") {
//                    let oldest = people.max { $0.age < $1.age }
//                    var age = 0
//                    if (oldest != nil){
//                        age = oldest!.age
//                    }
                    
                    let person = Person(
                        name: "Test Person",
                        age: 2
                    )
                    
                    context.insert(person)
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
