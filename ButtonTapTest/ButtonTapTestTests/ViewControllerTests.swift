//
//  ViewControllerTests.swift
//  ButtonTapTestTests
//
//  Created by master on 8/10/22.
//

import XCTest
@testable import ButtonTapTest

class ViewControllerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_tappingButton() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = storyBoard.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
        tap(sut.button)
    }

}
