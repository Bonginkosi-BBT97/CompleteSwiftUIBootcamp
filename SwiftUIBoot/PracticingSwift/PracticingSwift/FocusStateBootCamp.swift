//
//  FocusStateBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/31.
//

import SwiftUI

struct FocusStateBootCamp: View {

    enum Onboardingfields: Hashable {
        case username
        case password
    }
    //@FocusState private var usernameInFocus:Bool
    @State var username: String = ""
   // @FocusState private var passwordInFocus:Bool
    @State var password: String = ""
    @FocusState private var fieldInFocus: Onboardingfields?
    var body: some View {
        VStack {
            TextField("Add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
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


            Button("Sign Up") {
                let usernameIsValid =  !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("Sign Up")
                } else if usernameIsValid {
                    fieldInFocus = .password
                } else {
                    fieldInFocus = .username
                }
            }
//            Button("toggle focus state") {
//                usernameInFocus.toggle()
//            }

        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
//            }

    }
}

struct FocusStateBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootCamp()
    }
}
