//
//  FirstLab.swift
//  se_labs_macos
//
//  Created by Сергей Большаков on 30.01.2024.
//

import SwiftUI

struct FirstLab: View {
    @State var x0: Int32?;
    @State var xk: Int32?;
    @State var dx: Int32?;
    @State var a: Int32?;
    
    var body: some View {
        VStack {
            Section {
                VStack {
                    TextField("x0", value: $x0, formatter: NumberFormatter())
                    TextField("", value: $xk, formatter: NumberFormatter(), prompt: Text("xk"))
                    TextField("", value: $dx,formatter: NumberFormatter(), prompt: Text("dx"))
                    TextField("", value: $a,formatter: NumberFormatter(), prompt: Text("a"))
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Вычислить")
                })
            }
        }.padding()
    }
}

#Preview {
    FirstLab()
}
