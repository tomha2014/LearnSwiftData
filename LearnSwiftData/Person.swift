//
//  Person.swift
//  LearnSwiftData
//
//  Created by tom hackbarth on 6/17/23.
//

import Foundation
import SwiftUI
import SwiftData

@Model
final class Person{
    @Attribute(.unique)
    var id: UUID
    
    var name: String
    var age: Int
//    var address: Address?
    
    init( name: String, age: Int) {
        self.id = UUID()
        self.name = name
        self.age = age
    }
}
