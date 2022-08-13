//
//  ViewControllerTests.swift
//  UserDefaultsTests
//
//  Created by master on 8/13/22.
//

import XCTest

@testable import UserDefaults

class ViewControllerTests: XCTestCase {

    private var sut: ViewController!
    private var defaults: FakeUserDefaults!
    
    override func setUp() {
        super.setUp()
        let sb = UIStoryboard(name: "Main", bundle: nil)
        sut = sb.instantiateViewController(identifier: String(describing: ViewController.self)) as ViewController
        defaults = FakeUserDefaults()
        sut.userDefaults = defaults
    }

    override func tearDown() {
        defaults = nil
        sut = nil
        super.tearDown()
    }
    
    func test_viewDidLoad_withEmptyUserDefaults_shouldShow0CountInLabel() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.counterLabel.text, "0")
    }
    
    func test_viewDidLoad_with7InUserDefaults_shouldShow7CountInLabel() {
        defaults.integers = ["count" : 7]
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.counterLabel.text, "7")
    }

    func test_tappingButton_with12InUserDefaults_shouldWrite13ToUserDefaults() {
        defaults.integers = ["count": 12]
        sut.loadViewIfNeeded()
        
        tap(sut.incrementButton)
        XCTAssertEqual(defaults.integers["count"], 13)
    }
    
    func test_tappingButton_with43InUserDefaults_shouldShow44CountInLabel() {
        defaults.integers = ["count": 43]
        sut.loadViewIfNeeded()
        
        tap(sut.incrementButton)
        XCTAssertEqual(sut.counterLabel.text, "44")
    }
}
