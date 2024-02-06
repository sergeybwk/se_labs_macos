//
//  task.swift
//  se_labs_macos
//
//  Created by Андрей  Голованов on 07.02.2024.
//

import Foundation


// task class
class Task: TaskStateProtocol, CustomStringConvertible {
    var IsDone: Bool = true
    
    var changeable: Bool = true

    private(set) var description: String
    
    
    init(description: String) {
        self.description = description
    }
}

protocol TaskStateProtocol {
    var IsDone: Bool { get }
}
