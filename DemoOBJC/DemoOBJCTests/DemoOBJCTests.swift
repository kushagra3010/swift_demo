//
//  DemoOBJCTests.swift
//  DemoOBJCTests
//
//  Created by Kushagra Pandya on 3/16/17.
//  Copyright © 2017 meetup. All rights reserved.
//

import XCTest

class DemoOBJCTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testGetUserName() {
        let user:User = User()
        let username = user.getFullName()
        XCTAssertEqual(username, "username")
    }
    
}
