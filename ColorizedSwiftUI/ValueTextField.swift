//
//  ValueTextField.swift
//  ColorizedSwiftUI
//
//  Created by Александр on 17.06.2021.
//

import SwiftUI

struct ValueTextField: View {
    
    @Binding var value: Double
    
    @State private var showAlert = false
    @State private var newValue = 0.0
    
    var body: some View {
        TextField("", text: textValue, onCommit: {
            value = newValue
        })
        .frame(width: 50, alignment: .trailing)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Wrong Format"),
                message: Text("Please enter value from 0 to 255")
            )
        }
    }
    
    private var textValue: Binding<String> {
        Binding<String>(
            get: { "\(lround(value))" },
            set: {
                if let number = NumberFormatter().number(from: $0) {
                    let doubleValue = number.doubleValue
                    check(value: doubleValue)
                } else {
                    newValue = 0
                    showAlert.toggle()
                }
            }
        )
    }
    
    private func check(value: Double) {
        if !(0...250).contains(value) {
            newValue = 0
            showAlert.toggle()
            return
        }
        newValue = value
    }
}
    
struct ValueTextField_Previews: PreviewProvider {
    static var previews: some View {
        ValueTextField(value: .constant(120.0))
    }
}
