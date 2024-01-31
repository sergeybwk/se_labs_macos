//
//  Lab1Tests.swift
//  se_labs_macosTests
//
//  Created by Андрей  Голованов on 01.02.2024.
//

import XCTest

@testable import se_labs_macos // Replace 'YourAppTarget' with the name of your app's target

// MARK: - FunctionTabulatorTests
class FunctionTabulatorTests: XCTestCase {
    
    var tabulator: FunctionTabulator!

    override func setUpWithError() throws {
        super.setUp()
        // Initialize the tabulator with the specific values before each test
        tabulator = FunctionTabulator(start: 0.25, end: 2.2, step: 0.2, b: 3.2)
    }

    override func tearDownWithError() throws {
        // Deinitialize the tabulator after each test
        tabulator = nil
        super.tearDown()
    }
    
    // Test to check if the tabulateFunction() method is working correctly
    func testFunctionTabulation() throws {
        // Perform the tabulation
        let results = tabulator.tabulateFunction()
        
        // Check if the number of results is correct
        let expectedNumberOfResults = Int((tabulator.end - tabulator.start) / tabulator.step) + 1
        XCTAssertEqual(results.count, expectedNumberOfResults, "The number of tabulated values is incorrect.")
        
        // Check the first and last values as a sample verification
        if let firstResult = results.first, let lastResult = results.last {
            // Since we're dealing with floating point numbers, we use accuracy for comparison
            let accuracy = 0.0001
            XCTAssertEqual(firstResult.x, 0.25, accuracy: accuracy, "First x value is incorrect.")
            XCTAssertEqual(lastResult.x, 2.2, accuracy: accuracy, "Last x value is incorrect.")
            
        } else {
            XCTFail("No results to check.")
        }
    }
}
