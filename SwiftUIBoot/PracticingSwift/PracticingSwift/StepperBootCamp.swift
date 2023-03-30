//
//  StepperBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/24.
//

import SwiftUI

struct StepperBootCamp: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0

    var body: some View {
        VStack {
            Stepper("Stepper:\(stepperValue)", value: $stepperValue)
                .padding(50)
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            Stepper("Stepper 2") {
                // Increment
            incrementWidth(amount: 100)
            } onDecrement: {
                // Decrement
                widthIncrement -= 10
            }
        }
    }

    func incrementWidth(amount: CGFloat){
        withAnimation(.easeOut) {
            widthIncrement += amount
        }
    }
}

struct StepperBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootCamp()
    }
}
