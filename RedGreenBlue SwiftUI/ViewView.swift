//
//  ViewView.swift
//  RedGreenBlue SwiftUI
//
//  Created by Vladimir on 02.11.2023.
//

import SwiftUI

struct ViewView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Rectangle()
            .frame(width: 350, height: 250)
            .cornerRadius(20)
            .foregroundColor(Color(red: realColor(red), green: realColor(green), blue: realColor(blue)))
    }
    
    private func realColor(_ color: Double) -> Double {
        color / 255
    }
}

//
//struct ViewView_Previews: PreviewProvider {
//    static var previews: some View {
//        ViewView()
//    }
//}
