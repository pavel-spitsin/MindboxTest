//
//  Triangle.swift
//  MinboxTest
//
//  Created by Pavel on 14.02.2024.
//

import Foundation

class Tringle {
    let sideA: Double
    let sideB: Double
    let sideC: Double
    
    init(sideA: Double, sideB: Double, sideC: Double) throws {
        
        if sideA + sideB > sideC && sideA + sideC > sideB && sideB + sideC > sideA {
            self.sideA = sideA
            self.sideB = sideB
            self.sideC = sideC
        } else {
            throw NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Cannot to create a triangle"])
        }
    }
    
    func triangleIsRight() -> Bool {
        if pow(sideA, 2) + pow(sideB, 2) == pow(sideC, 2) {
            return true
        } else if pow(sideA, 2) + pow(sideC, 2) == pow(sideB, 2) {
            return true
        } else if pow(sideB, 2) + pow(sideC, 2) == pow(sideA, 2) {
            return true
        } else {
            return false
        }
    }
}

extension Tringle: Shape {
    func calculateArea() -> Double {
        let semiperimeter = (sideA + sideB + sideC)/2
        let area = sqrt(semiperimeter*(semiperimeter - sideA)*(semiperimeter - sideB)*(semiperimeter - sideC))
        return area
    }
}
