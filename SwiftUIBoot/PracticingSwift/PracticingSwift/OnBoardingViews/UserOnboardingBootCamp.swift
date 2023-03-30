//
//  UserOnboardingBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/31.
//

import SwiftUI

struct UserOnboardingBootCamp: View {
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    var body: some View {
        ZStack {
            // background

            RadialGradient(
                gradient: Gradient(colors: [Color(.purple), Color(.blue)]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()

            if currentUserSignedIn {
               ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }

        }
    }
}

struct UserOnboardingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        UserOnboardingBootCamp()
    }
}
