//
//  ViewControllerTests.swift
//  NavigationTests
//
//  Created by master on 8/11/22.
//

import XCTest
import ViewControllerPresentationSpy

@testable import Navigation

class ViewControllerTests: XCTestCase {
    
    private var presentationVerifier: PresentationVerifier!
    
    override func setUp() {
        super.setUp()
        presentationVerifier = PresentationVerifier()
    }
    
    override func tearDown() {
        presentationVerifier = nil
        super.tearDown()
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
    
    func test_tappingCodeModalButton_shouldPresentCodeNextViewController() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = storyBoard.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
        tap(sut.codeModalButton)
        
        let codeNextVC: CodeNextViewController? = presentationVerifier.verify(animated: true, presentingViewController: sut)
        XCTAssertEqual(codeNextVC?.label.text, "Modal from code")
    }
    
}
