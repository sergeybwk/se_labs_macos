//
//  lab1.swift
//  se_labs_macos
//
//  Created by Андрей  Голованов on 30.01.2024.
//

import Foundation

// MARK: - Model
class FunctionTabulator {
    let start: Double
    let end: Double
    let step: Double
    let b: Double
    
    init(start: Double, end: Double, step: Double, b: Double) {
        self.start = start
        self.end = end
        self.step = step
        self.b = b
    }
    
    func tabulateFunction() -> [(x: Double, y: Double)] {
        var results = [(x: Double, y: Double)]()
        var x = start
        while x <= end {
            let y = calculateFunctionValue(x: x, b: b)
            results.append((x, y))
            x += step
        }
        return results
    }
    
    private func calculateFunctionValue(x: Double, b: Double) -> Double {
        return 9 * (pow(x, 3) + pow(b, 3)) * tan(x)
    }
}

// MARK: - ViewModel
class FunctionViewModel {
    private let tabulator: FunctionTabulator
    
    init(tabulator: FunctionTabulator) {
        self.tabulator = tabulator
    }
    
    func displayTabulatedFunction() {
        let values = tabulator.tabulateFunction()
        for value in values {
            print("x: \(value.x), y: \(value.y)")
        }
    }
}

//// MARK: - Usage
//let functionTabulator = FunctionTabulator(start: 0.25, end: 2.2, step: 0.2, b: 3.2)
//let viewModel = FunctionViewModel(tabulator: functionTabulator)
//viewModel.displayTabulatedFunction()
