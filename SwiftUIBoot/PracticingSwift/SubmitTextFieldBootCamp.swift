//
//  SubmitTextFieldBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/31.
//

import SwiftUI

struct SubmitTextFieldBootCamp: View {
    @State private var text: String = ""
    var body: some View {
        TextField("Placeholder... Route ", text: $text)
            .submitLabel(.route)
            .onSubmit {
                print("Something is printed: Route button clicked")
            }
        TextField("Placeholder... Next", text: $text)
            .submitLabel(.next)
            .onSubmit {
                print("Something is printed: Next button clicked")
            }
        TextField("Placeholder... Search", text: $text)
            .submitLabel(.search)
            .onSubmit {
                print("Something is printed: Search button clicked")
            }
    }
}

struct SubmitTextFieldBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootCamp()
    }
}
