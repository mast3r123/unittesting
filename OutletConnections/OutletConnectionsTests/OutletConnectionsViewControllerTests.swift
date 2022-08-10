//
//  OutletConnectionsViewControllerTests.swift
//  OutletConnectionsTests
//
//  Created by master on 8/9/22.
//

import XCTest
@testable import OutletConnections

class OutletConnectionsViewControllerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_outlets_shouldBeConnected() {
        let sut = OutletConnectionsViewController()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.label, "label")
        XCTAssertNotNil(sut.button, "button")
    }
    
}
