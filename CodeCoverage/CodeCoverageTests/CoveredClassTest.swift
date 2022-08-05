//
//  CoveredClassTest.swift
//  CodeCoverageTests
//
//  Created by master on 8/4/22.
//

import XCTest
@testable import CodeCoverage

class CoveredClassTest: XCTestCase {

    func test_max_with1and2_shouldReturn2() {
        let result = CoveredClass.max(1, 2)
        
        XCTAssertEqual(result, 2)
    }

    func test_max_with5and4_shouldReturn5() {
        let result = CoveredClass.max(5, 4)
        XCTAssertEqual(result, 5)
    }
    
    func test_commaSeparatedFrom2to4_shouldReturn234SeperatedByCommas() {
        let result = CoveredClass.commaSeparated(from: 2, to: 4)
        XCTAssertEqual(result, "2,3,4")
    }
    
    func test_commaSeperatedFrom2to2_shouldReturn2() {
        let result = CoveredClass.commaSeparated(from: 2, to: 2)
        XCTAssertEqual(result, "2")
    }
    
    func test_area_withWidth7_shouldBe49() {
        let sut = CoveredClass()
        sut.widht = 7
        XCTAssertEqual(sut.area, 49)
    }
}
