//
//  LoadViewControllerTestsTests.swift
//  LoadViewControllerTestsTests
//
//  Created by master on 8/5/22.
//

import XCTest
@testable import LoadViewControllerTests

class LoadViewControllerTestsTests: XCTestCase {

    func test_loading() {
        let sut = CodeBasedViewController(data: "DUMMY")
        sut.loadViewIfNeeded()
    }

}
