//
//  Comprehensive.swift
//  CassowaryTests
//
//  Created by Jason Jobe on 6/8/18.
//

import XCTest
@testable import Cassowary


class Comprehensive: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let solver = Solver()

         let left =  Variable("left")
         let mid =   Variable("mid")
         let right = Variable("right")

         try solver.addConstraint(mid == (left + right) / 2)
         try solver.addConstraint(right == left + 10)
         try solver.addConstraint(right <= 100)
         try solver.addConstraint(left >= 0)

         solver.updateVariables()

         // left.value is now 90.0
         // mid.value is now 95.0
         // right.value is now 100.0

//         try solver.addEditVariable(variable: mid, strength: Strength.STRONG)
//         try solver.suggestValue(variable: mid, value: 2)
//
//        solver.updateVariables()
        Swift.print(solver.variableSymbols.orderedEntries)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
