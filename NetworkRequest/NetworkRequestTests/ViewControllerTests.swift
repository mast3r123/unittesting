//
//  ViewControllerTests.swift
//  NetworkRequestTests
//
//  Created by master on 8/15/22.
//

import XCTest
@testable import NetworkRequest

class ViewControllerTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_tappingButton_shouldMakeDataTaskToSearchForEBookOutFromBoneville() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let sut = sb.instantiateViewController(withIdentifier: String(describing: ViewController.self)) as! ViewController
        
        let mockSession = MockURLSession()
        sut.session = mockSession
        sut.loadViewIfNeeded()
        tap(sut.button)
        mockSession.verifyDataTask(with: URLRequest(url: URL(string: "https://itunes.apple.com/search?" +
                                                             "media=ebook&term=out%20from%20boneville")!))
    }
    
}
