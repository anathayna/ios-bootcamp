//
//  leilaoUITests.swift
//  leilaoUITests
//
//  Created by Ana Thayna Franca on 17/07/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import XCTest

class leilaoUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        
    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
