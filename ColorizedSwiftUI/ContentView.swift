//
//  ContentView.swift
//  ColorizedSwiftUI
//
//  Created by Александр on 17.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0, green: 0.3765624762, blue: 0.7304599881, alpha: 1)).ignoresSafeArea() // iOS 14
            
            VStack {
                VStack(spacing: 40) {
                    ColorView(red: red, green: green, blue: blue)
                    
                    VStack {
                        ColorSlider(sliderValue: $red, color: .red)
                        ColorSlider(sliderValue: $green, color: .green)
                        ColorSlider(sliderValue: $blue, color: .blue)
                        
                    }
                    .frame(height: 150)
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
