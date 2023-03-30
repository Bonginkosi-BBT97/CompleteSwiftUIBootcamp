//
//  OnboardingView.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/31.
//

import SwiftUI

struct OnboardingView: View {
    // Onboarding States:
    /*
     0 - Welcome Screen
     1 - Add Name
     2 - Add age
     3 - Add Gender
     */

    @State var onboardingStates: Int = 0
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))

    // Onboadring inouts
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""

    // for the alerts
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false

        // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingStates {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                }
            }
            // buttons
            VStack {
                Spacer()
                bottomButton

                }
            .padding(30)
            }
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
        }
        }


    }

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}


// MARK: COMPONENTS

extension OnboardingView {

    private var bottomButton: some View {
        Text(onboardingStates == 0 ? "SIGN UP" :
                onboardingStates == 3 ? "FINISH" : "NEXT" )
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .animation(nil)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }

    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            Text("This is the number #1 app for finding you match. In this tut we are practings usiong AppStroge and other SwiftUi techniques")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }

    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding(30)

    }
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            Spacer()
            Spacer()
        }
        .padding(30)

    }

    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Picker(selection: $gender,
                   label:
                    Text(gender.count > 1 ? gender : "Select a gender")
                        .font(.headline)
                        .foregroundColor(.purple)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10),
                   content: {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-Binary").tag("Non-Bonary")
            })
            .pickerStyle(MenuPickerStyle())
            Spacer()
            Spacer()
        }
        .padding(30)

    }
}

// MARK: FUNCTIONS

extension OnboardingView {

    func handleNextButtonPressed() {

        // CHECK INPUTS
        switch onboardingStates {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name should be atleast 3 character long")
                return
            }
        case 3:
            guard  gender.count > 1 else {
                showAlert(title: "Please select a gender before moving foward!")
                return
            }
        default:
            break
        }

        //GO NEXT SECTION
        if onboardingStates == 3 {
            signIn()

        } else {
            withAnimation(.spring()) {
                onboardingStates += 1
            }
        }
    }

    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }

    func showAlert(title: String ){
        alertTitle = title
        showAlert.toggle()
    }
}
