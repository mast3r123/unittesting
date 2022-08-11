//
//  ViewControllerTests.swift
//  NavigationTests
//
//  Created by master on 8/11/22.
//

import XCTest

@testable import Navigation

class ViewControllerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_tappingCodePushButton_shouldPushCodeNextViewController() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = storyBoard.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
        let navigation = UINavigationController(rootViewController: sut)
        tap(sut.codePushButton)
        executeRunLoop()
        
        XCTAssertEqual(navigation.viewControllers.count, 2, "navigation Stack")
        
        let pushedVC = navigation.viewControllers.last
        
        guard let codeNextVC = pushedVC as? CodeNextViewController else {
            XCTFail("Expected CodeNextViewController, " + "but was \(String(describing: pushedVC))")
            return
        }
        
        XCTAssertEqual(codeNextVC.label.text, "Pushed from code")
    }

}
