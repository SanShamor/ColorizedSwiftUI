//
//  ValueLabel.swift
//  ColorizedSwiftUI
//
//  Created by Александр on 17.06.2021.
//

import SwiftUI

struct ValueLabel: View {
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 40, height: 60, alignment: .leading)
            .foregroundColor(.red)
    }
}

struct ValueLabel_Previews: PreviewProvider {
    static var previews: some View {
        ValueLabel(value: 144)
    }
}
