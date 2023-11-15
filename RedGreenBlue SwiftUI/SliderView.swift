//
//  SliderAndTextsViews.swift
//  RedGreenBlue SwiftUI
//
//  Created by Vladimir on 31.10.2023.
//

import SwiftUI

struct SliderView: View {
    @State private var sliderValue = 50.0
    @State private var text = ""
    let color: Color
    
    var body: some View {
        HStack {
            ColorSliderView(sliderValue: $sliderValue, text: $text, color: .red)
            Spacer()
            
        }
        .padding()
    }
}

struct ColorSliderView: View {
    @Binding var sliderValue: Double
    @Binding var text: String
    let color: Color
    
    var body: some View {
        HStack {
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .cornerRadius(40)
                .frame(width: 230)
                .background(color)
                .cornerRadius(25)
                .accentColor(color)
                .saturation(sliderValue / 255)
                .onChange(of: self.sliderValue) { newValue in
                    text = newValue.formatted(.number)
                }
        }
    }
}

struct SliderAndTextsViews_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(color: .red)
    }
}
