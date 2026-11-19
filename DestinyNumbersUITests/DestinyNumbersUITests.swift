//
//  DestinyNumbersUITests.swift
//  DestinyNumbersUITests
//
//  Created by burnsoft on 12/23/20.
//  Copyright © 2020 burnsoft. All rights reserved.
//

import XCTest

final class DestinyNumbersUITests: XCTestCase {

    private let aboutExpectedString = "The Celts considered numbers very important, even in some instances,  There is evidence that the Druids used numbers to represent certain ideas."
    private let submitButtonText = "  Get your Destiny Number  "

    override func setUpWithError() throws {
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
    }

    /// Verify that app can run
    @MainActor
    func testRunApp() throws {
        let app = XCUIApplication()
        app.launch()
    }

    /// Start up app and View about section
    @MainActor
    func testCheckAbout() throws {
        let app = XCUIApplication()
        app.launch()

        app.tabBars["Tab Bar"].buttons["About"].tap()
    }

    /// Start up app and Test the Main Section like a user would
    @MainActor
    func testMainFunctionAll3Initials() throws {
        let app = XCUIApplication()
        app.launch()

        app.textFields["A"].tap()
        app.keys["J"].tap()
        app.textFields["B"].tap()
        app.keys["S"].tap()
        app.textFields["C"].tap()
        app.keys["M"].tap()
        app.swipeUp()

//        let celticknot2JpgScrollView = app.scrollViews.containing(.image, identifier: "celticknot2.jpg").element
//        celticknot2JpgScrollView.tap()
//        celticknot2JpgScrollView.press(forDuration: 0.7)
        app.buttons[submitButtonText].staticTexts[submitButtonText].tap()
    }

    @MainActor
    func testMainFunction2Initials() throws {
        let app = XCUIApplication()
        app.launch()

        app.textFields["A"].tap()
        app.keys["J"].tap()
        app.textFields["C"].tap()
        app.keys["M"].tap()

//        let celticknot2JpgScrollView = app.scrollViews.containing(.image, identifier: "celticknot2.jpg").element
//        celticknot2JpgScrollView.tap()
//        celticknot2JpgScrollView.press(forDuration: 0.7)
        app.buttons[submitButtonText].staticTexts[submitButtonText].tap()
    }

    @MainActor
    func testLaunchPerformance() throws {
        // This measures how long it takes to launch your application.
        measure(metrics: [XCTApplicationLaunchMetric()]) {
            XCUIApplication().launch()
        }
    }
}
