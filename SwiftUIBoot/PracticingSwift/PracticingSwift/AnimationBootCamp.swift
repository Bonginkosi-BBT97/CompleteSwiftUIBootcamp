//
//  AnimationBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/13.
//

import SwiftUI

struct AnimationBootCamp: View {

    @State var isAnimated: Bool = false

    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(Animation.default.delay(2.0)) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100: 300, height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            Spacer()
        }
    }
}

struct AnimationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootCamp()
    }
}
