//
//  UtilsSpec.swift
//  LearnSwiftDataTests
//
//  Created by tom hackbarth on 6/21/23.
//

import XCTest

final class UtilsSpec: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
         
            
            // Put the code you want to measure the time of here.
        }
    }
    
    func testEmptyPersonArray() throws {
        let person = Person(name:"tom", age: 3)
        let people:[Person] = []
        XCTAssertEqual(Utils.getNextAge(people: people), 0)
    }
    
    func testOnePersonInArray() throws {
        let person = Person(name:"Person 1", age: 3)
        let people:[Person] = [person]
        XCTAssertEqual(Utils.getNextAge(people: people), 4)
    }
    
    func testTreePersonInArray() throws {
        let person1 = Person(name:"Person 1", age: 3)
        let person2 = Person(name:"Person 2", age: 34)
        let person3 = Person(name:"Person 3", age: 55)
        let people:[Person] = [person1, person2, person3]
        XCTAssertEqual(Utils.getNextAge(people: people), 56)
    }

}
