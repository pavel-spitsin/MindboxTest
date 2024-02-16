//
//  CircleTests.swift
//  MinboxTestTests
//
//  Created by Pavel on 16.02.2024.
//

import XCTest
@testable import MinboxTest

final class CircleTests: XCTestCase {
    func testCircleArea() {
        let circle = Circle(radius: 5)
        XCTAssertEqual(circle.calculateArea(), 25 * Double.pi)
    }
    
    func testCircleZeroRadius() {
        let circle = Circle(radius: 0)
        XCTAssertEqual(circle.calculateArea(), 0)
    }
    
    func testCircleNegativeRadius() {
        let circle = Circle(radius: -5)
        XCTAssertLessThan(circle.radius, 0)
    }
}
