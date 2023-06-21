//
//  Address.swift
//  LearnSwiftData
//
//  Created by tom hackbarth on 6/20/23.
//

import Foundation
import SwiftUI
import SwiftData

@Model
final class Address{
//    @Attribute(.unique)
    var id: UUID = UUID()
    
    var street: String = ""
    var city: String = ""
    var state: String = ""
    var zip: String = ""
    @Relationship var person: Person?

    init(street: String, city: String, state: String, zip: String) {
        
        self.id = id
        self.street = street
        self.city = city
        self.state = state
        self.zip = zip
    }
}
