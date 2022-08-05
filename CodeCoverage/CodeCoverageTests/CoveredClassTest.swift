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
}
