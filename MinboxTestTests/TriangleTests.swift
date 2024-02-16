//
//  MinboxTestTests.swift
//  MinboxTestTests
//
//  Created by Pavel on 14.02.2024.
//

import XCTest
@testable import MinboxTest

final class TriangleTests: XCTestCase {
    func testTriangleArea() throws {
        let triangle = try Tringle(sideA: 3, sideB: 4, sideC: 5)
        XCTAssertEqual(triangle.calculateArea(), 6)
    }
    
    func testTriangleIsRight() throws {
        let triangle = try Tringle(sideA: 3, sideB: 4, sideC: 5)
        XCTAssertTrue(triangle.triangleIsRight())
    }
    
    func testTriangleIsNotRight() throws {
        let triangle = try Tringle(sideA: 3, sideB: 4, sideC: 6)
        XCTAssertFalse(triangle.triangleIsRight())
    }
    
    func testImpossibleTriangle() throws {
        XCTAssertThrowsError(try Tringle(sideA: 10, sideB: 4, sideC: 3)) { error in
            XCTAssertEqual((error as NSError).code, -1)
        }
    }
    
    func testTriangleZeroSides() {
        XCTAssertThrowsError(try Tringle(sideA: 0, sideB: 0, sideC: 0)) { error in
            XCTAssertEqual((error as NSError).code, -1)
        }
    }
    
    func testTriangleNegativeSides() {
        XCTAssertThrowsError(try Tringle(sideA: -3, sideB: -4, sideC: -5)) { error in
            XCTAssertEqual((error as NSError).code, -1)
        }
    }
}
