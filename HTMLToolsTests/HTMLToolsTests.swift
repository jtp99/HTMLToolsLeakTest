//
//
//  HTMLToolsTests.swift
//  HTMLToolsTests
//
// Created on 18.01.23.
// Created for HTMLTools in 2023
// Using Swift 5.0
// 

import XCTest
@testable import HTMLToolsLeakTest

final class HTMLToolsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testHTMLElementMemoryLeak() {
        let html = HTMLElement(name: "Test")
        _ = html.asHTML()
        
        addTeardownBlock { [weak html] in
            XCTAssertNil(html)
        }
    }
}
