//
//  TransitionBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/13.
//

import SwiftUI

struct TransitionBootCamp: View {
    @State var showView : Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("BUTTON") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //.transition(.slide)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }

        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootCamp()
    }
}
