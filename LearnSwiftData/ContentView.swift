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
                        age: getNextAge(people: people)
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
    
    func getNextAge(people: [Person]) -> Int {
        let oldest = people.max { $0.age < $1.age }

        if let oldest = oldest {
            return oldest.age + 1
        }
        return 0
    }
}

#Preview {
    ContentView()
}
