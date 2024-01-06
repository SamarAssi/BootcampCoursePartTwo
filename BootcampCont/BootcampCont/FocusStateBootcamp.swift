//
//  FocusStateBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 31/07/2023.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingFields: Hashable {
        case username
        case password
    }
 

    @State private var username: String = ""
    @State private var password: String = ""
    @FocusState var fieldInFocus: OnboardingFields?

    
    var body: some View {
        VStack(spacing: 30) {
            
            TextField("Add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
                //.focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            
            SecureField("Add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SIGN UP 🚀") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                    username = ""
                    password = ""
                } else if usernameIsValid {
                    fieldInFocus = .password
                    
                } else {
                    fieldInFocus = .username

                }
            }

        }
        .padding(40)

    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
