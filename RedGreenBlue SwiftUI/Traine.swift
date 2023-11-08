//
//  Traine.swift
//  RedGreenBlue SwiftUI
//
//  Created by Vladimir on 01.11.2023.
//

import SwiftUI

struct Traine {
    var body: some View {
       Text("Hello")
    }
}

//struct Traine: View {
//        enum Field: Hashable {
//            case usernameField
//            case passwordField
//        }
//
//        @State private var username = ""
//        @State private var password = ""
//        @FocusState private var focusedField: Field?
//
//        var body: some View {
//            Form {
//                TextField("Username", text: $username)
//                    .focused($focusedField, equals: .usernameField)
//
//                SecureField("Password", text: $password)
//                    .focused($focusedField, equals: .passwordField)
//
//                Button("Sign In") {
//                    if username.isEmpty {
//                        focusedField = .usernameField
//                    } else if password.isEmpty {
//                        focusedField = .passwordField
//                    } else {
//                        handleLogin(username, password)
//                    }
//                }
//            }
//        }
//    }

//struct Traine_Previews: PreviewProvider {
//    static var previews: some View {
//        Traine()
//    }
//}
