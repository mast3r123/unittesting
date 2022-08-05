//
//  CodeCoverage.swift
//  CodeCoverage
//
//  Created by master on 8/4/22.
//

import UIKit

class CoveredClass {
    
    private(set) var area: Int
    
    var widht: Int {
        didSet {
            area = widht * widht
            let color: UIColor = redOrGreen(for: widht)
            drawSquare(widht: widht, color: color)
        }
    }
    
    init() {
        area = 0
        widht = 0
    }
    
    private func redOrGreen(for width: Int) -> UIColor {
        width % 2 == 0 ? .red : .green
    }
    
    private func drawSquare(widht: Int, color: UIColor) {
        
    }
    
    static func max(_ x: Int, _ y: Int) -> Int {
        if x < y {
            return y
        }
        return x
    }
    
    static func commaSeparated(from: Int, to: Int) -> String {
        var result = ""
        for i in from..<to {
            result += "\(i),"
        }
        result += "\(to)"
        return result
    }
}
