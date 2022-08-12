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
    private var sut: ViewController!
    
    override func setUp() {
        super.setUp()
        presentationVerifier = PresentationVerifier()
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyBoard.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
    }
    
    override func tearDown() {
        executeRunLoop()
        presentationVerifier = nil
        sut = nil
        super.tearDown()
    }
    
    func test_tappingCodePushButton_shouldPushCodeNextViewController() {
        
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
        tap(sut.codeModalButton)
        
        let codeNextVC: CodeNextViewController? = presentationVerifier.verify(animated: true, presentingViewController: sut)
        XCTAssertEqual(codeNextVC?.label.text, "Modal from code")
    }
    
    func test_tappingSeguePushButton_shouldShowSegueNextViewController() {
        putInWindow(sut)
        tap(sut.seguePushButton)
        let segueNextVC: SegueNextViewController? = presentationVerifier.verify(
            animated: true, presentingViewController: sut)
        XCTAssertEqual(segueNextVC?.labelText, "Pushed from segue")
    }
    
    func test_tappingSegueModalButton_shouldShowSegueNextViewController() {
        tap(sut.segueMOdalButton)
        let segueNextVC: SegueNextViewController? = presentationVerifier.verify(
            animated: true, presentingViewController: sut)
        XCTAssertEqual(segueNextVC?.labelText, "Modal from segue")
    }
}
