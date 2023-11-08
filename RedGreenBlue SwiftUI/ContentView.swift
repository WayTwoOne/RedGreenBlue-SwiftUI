//
//  ContentView.swift
//  RedGreenBlue SwiftUI
//
//  Created by Vladimir on 31.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redText = 50.0
    @State private var greenText = 50.0
    @State private var bluetext = 50.0
    
    @State private var redTF = "50"
    @State private var greenTF = "50"
    @State private var blueTF = "50"
    
    @FocusState var isFocused: Bool
    
    let color = Color.mint

    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(color)
                .ignoresSafeArea()
                .onTapGesture {
                    isFocused = false
                }
            VStack {
                ViewView(red: redText, green: greenText, blue: bluetext)
                SliderAndTextFieldView(value: $redText, text: $redTF, color: .red)
                SliderAndTextFieldView(value: $greenText, text: $greenTF, color: .green)
                SliderAndTextFieldView(value: $bluetext, text: $blueTF, color: .blue)
            }
            .focused($isFocused)
        }
        .onTapGesture {
            isFocused = true
        }
    }
}

struct SliderAndTextFieldView: View {
    @Binding var value: Double
    @Binding var text: String
    

    let color: Color
    
    var body: some View {
        HStack(spacing: 5) {
            Text(value.formatted(.number))
                .frame(width: 50)
            ColorSliderView(sliderValue: $value, text: $text, color: color)
            TextFieldView(text: $text, value: $value)
        }
        .padding([ .vertical])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
