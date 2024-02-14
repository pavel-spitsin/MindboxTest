//
//  Circle.swift
//  MinboxTest
//
//  Created by Pavel on 14.02.2024.
//

import Foundation

class Circle {
    let radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
}

extension Circle: Shape {
    func calculateArea() -> Double {
        return Double.pi*pow(radius, Double(2))
    }
}
