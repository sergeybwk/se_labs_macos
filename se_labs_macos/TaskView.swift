//
//  TaskView.swift
//  se_labs_macos
//
//  Created by Сергей Большаков on 07.02.2024.
//

import SwiftUI

struct TaskView: View {
    
    let taskTitle: String
    @State var isChecked: Bool = false
    
    var body: some View {
        Toggle(taskTitle, isOn: $isChecked).padding()
    }
}

#Preview {
    TaskView(taskTitle: "test")
}
