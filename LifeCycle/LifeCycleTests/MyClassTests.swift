//
//  MyClassTests.swift
//  LifeCycleTests
//
//  Created by master on 8/4/22.
//

import XCTest

@testable import LifeCycle

class MyClassTests: XCTestCase {

    func test_methodOne() {
        let sut = MyClass()
        
        sut.methodOne()
        XCTFail("Failed")
    }

    func test_methodTwo() {
        let sut = MyClass()
        sut.methodTwo()
    }
}
