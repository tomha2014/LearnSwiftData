//
//  PersonRow.swift
//  LearnSwiftData
//
//  Created by tom hackbarth on 6/17/23.
//

import SwiftUI

struct PersonRow: View {
    let person:Person
    
    var body: some View {
        VStack{
            Text(person.name)
            Text(String(person.age))
        }
    }
}

#Preview {
    PersonRow(person: Person(name: "tom", age: 34))
}
