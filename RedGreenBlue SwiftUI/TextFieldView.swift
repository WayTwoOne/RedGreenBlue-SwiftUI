//
//  TextFieldView.swift
//  RedGreenBlue SwiftUI
//
//  Created by Vladimir on 31.10.2023.
//

import SwiftUI

struct TextFieldView: View {
    @FocusState private var isFocusedOnTextField: Bool
    @State private var alertPresented = false
    @Binding var text: String
    @Binding var value: Double
    
    var body: some View {
        VStack {
            TextField("", text: $text, onEditingChanged: { isFocused in
                withAnimation {
                    if isFocused == false {
                        value = Double(text) ?? 0.0
                        
                        if value > 255 {
                            value = 0.0
                            alertPresented.toggle()
                        } else {
                            for letter in text {
                                if Double(String(letter)) == nil && String(letter) != "." {
                                    value = 0.0
                                    alertPresented.toggle()
                                }
                            }
                        }
                    }
                }
            })
            .focused($isFocusedOnTextField)
            .textFieldStyle(.roundedBorder)
            .frame(width: 60)
            .alert("Wrong format", isPresented: $alertPresented, actions: {
                Button("Okey", action: {text = "0"})
            }, message: {
                Text("Please enter value from 0 to 255")
            }
            )
            
        }
    }
}


struct TextPreview: View {
    @State private var text = "50.0"
    @State private var value = 40.0
    
    var body: some View {
        TextFieldView(text: $text, value: $value)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextPreview()
    }
}

