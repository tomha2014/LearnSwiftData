//
//  Utils.swift
//  LearnSwiftData
//
//  Created by tom hackbarth on 6/21/23.
//

import Foundation

class Utils {
    
    /// A pure function to figure out the olded person and return that age + 1
    ///
    /// if the person list is empy then it returns 0
    ///
    /// - Parameter people: list of people to iterate over
    /// - Returns: the oldest person age + 1
    static func getNextAge(people: [Person]) -> Int {
        let oldest = people.max { $0.age < $1.age }

        if let oldest = oldest {
            return oldest.age + 1
        }
        return 0
    }
}
