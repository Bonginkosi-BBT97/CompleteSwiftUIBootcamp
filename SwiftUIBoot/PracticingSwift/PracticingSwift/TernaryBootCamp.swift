//
//  TernaryBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/13.
//

import SwiftUI

struct TernaryBootCamp: View {
    @State var isStartingState: Bool = false
    var body: some View {
        VStack {
            Text(isStartingState ? "STARTING STATE" : "ENDING STATE")
                .foregroundColor(isStartingState ? .red : .blue)
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            .foregroundColor(.green)
            // Creates a rectangle

//            if isStartingState {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(Color.red)
//                    .frame(width: 200, height: 100)
//
//            } else {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(Color.blue)
//                    .frame(width: 200, height: 100)
//            }
            RoundedRectangle(cornerRadius: 25.0)
                .fill(isStartingState ? Color.red : Color.blue)
            .frame(width: 200, height: 100)
            Spacer()
        }
    }
}

struct TernaryBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootCamp()
    }
}
