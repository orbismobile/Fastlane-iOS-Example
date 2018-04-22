//
//  OrbisMobileUITests.swift
//  OrbisMobileUITests
//
//  Created by Erik Flores on 4/22/18.
//  Copyright © 2018 Orbis Mobile. All rights reserved.
//

import XCTest

class OrbisMobileUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()

    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        snapshot("FilmViewController")
    }
    
}
