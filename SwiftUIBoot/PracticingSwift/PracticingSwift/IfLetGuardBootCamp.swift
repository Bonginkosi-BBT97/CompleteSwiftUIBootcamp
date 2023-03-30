//
//  IfLetGuardBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/29.
//

import SwiftUI

struct IfLetGuardBootCamp: View {
    @State var currentUserID: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false

    var body: some View {
        NavigationView {
            VStack {

                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }

                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                
               // loadData()
                loadData2()

            }
        }
    }
    func loadData() {

        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User ID is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no User ID"
        }
    }

    func loadData2() {
        guard let userID =  currentUserID else {
            displayText = "Error. There is no User ID"
            return
        }

        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User ID is: \(userID)"
            isLoading = false
        }
    }
}

struct IfLetGuardBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootCamp()
    }
}
