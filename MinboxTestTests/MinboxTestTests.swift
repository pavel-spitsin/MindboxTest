//
//  MinboxTestTests.swift
//  MinboxTestTests
//
//  Created by Pavel on 14.02.2024.
//

import XCTest
@testable import MinboxTest

final class MinboxTestTests: XCTestCase {
    func testCircleArea() {
        let circle = Circle(radius: 5)
        XCTAssertEqual(circle.calculateArea(), 25 * Double.pi)
    }
    
    func testTriangleArea() throws {
        let triangle = try Tringle(sideA: 3, sideB: 4, sideC: 5)
        XCTAssertEqual(triangle.calculateArea(), 6)
    }
    
    func testIsRight() throws {
        let triangle = try Tringle(sideA: 3, sideB: 4, sideC: 5)
        XCTAssertTrue(triangle.triangleIsRight())
    }
}
