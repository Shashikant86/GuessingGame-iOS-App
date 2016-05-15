//
//  GuessingGameUITests.swift
//  GuessingGameUITests
//
//  Created by Shashikant Jagtap on 14/05/2016.
//  Copyright © 2016 Shashikant Jagtap. All rights reserved.
//

import XCTest

class GuessingGameUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAllEmentinApp() {
        XCUIDevice.sharedDevice().orientation = .Portrait
        
        let app = XCUIApplication()
        XCTAssertEqual((app.textFields.count), 1)
        
        let numberBetween1To5TextField = app.textFields["number between 1 to 5"]
        numberBetween1To5TextField.typeText("1")
        app.buttons["See Result"].tap()
        
    
    }
    
}
