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
    var name: String = ""
    var age: Int = 0
    
    init( name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
