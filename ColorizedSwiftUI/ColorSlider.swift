//
//  Slider.swift
//  ColorizedSwiftUI
//
//  Created by Александр on 18.06.2021.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var sliderValue: Double
    var color: Color
    
    var body: some View {
        HStack {
            ValueLabel(value: sliderValue)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(color)
            
            ValueTextField(value: $sliderValue)
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(sliderValue: .constant(100), color: .red)
    }
}
