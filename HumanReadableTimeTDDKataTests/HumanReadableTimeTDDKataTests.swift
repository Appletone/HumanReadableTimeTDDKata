//
//  HumanReadableTimeTDDKataTests.swift
//  HumanReadableTimeTDDKataTests
//
//  Created by 張 景隆 on 2018/6/9.
//  Copyright © 2018年 張 景隆. All rights reserved.
//

import XCTest
@testable import HumanReadableTimeTDDKata

class HumanReadableTimeTDDKataTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testHours() {
        // Arrange
        let vc = ViewController()
        let input = 86399
        
        // Act
        let ret = vc.humanReadableTime(input: input)
        
        // Assert
        XCTAssertEqual("23:59:59", ret)
    }
    
    func testMinutes() {
        // Arrange
        let vc = ViewController()
        let input = 61
        
        // Act
        let ret = vc.humanReadableTime(input: input)
        
        // Assert
        XCTAssertEqual("01:01", ret)
    }
    
    func testSeconds() {
        // Arrange
        let vc = ViewController()
        let input = 3
        
        // Act
        let ret = vc.humanReadableTime(input: input)
        
        // Assert
        XCTAssertEqual("03", ret)
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
    
}
