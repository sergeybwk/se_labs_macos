//
//  ContentView.swift
//  se_labs_macos
//
//  Created by Сергей Большаков on 30.01.2024.
//

import SwiftUI

struct Main: View {
    var body: some View {
        Section {
            NavigationStack {
                VStack {
                    NavigationLink(destination: FirstLab()) {
                        Text("Лабораторная работа №1")
                    }
                    NavigationLink(destination: SecondLab()) {
                        Text("Лабораторная работа №2")
                    }
                }
            }
        }.padding()
    }
}

#Preview {
    Main()
}
