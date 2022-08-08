//
//  InstanceInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by master on 8/8/22.
//

import XCTest
@testable import HardDependencies

class InstanceInitializerViewControllerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_viewDidAppear() {
        let sut = InstanceInitializerViewController(analytics: Analytics())
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
    }

}
