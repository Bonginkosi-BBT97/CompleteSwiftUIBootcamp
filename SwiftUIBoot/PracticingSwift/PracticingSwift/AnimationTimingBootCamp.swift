//
//  AnimationTimingBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/13.
//

import SwiftUI

struct AnimationTimingBootCamp: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    var body: some View {
        VStack {
            Button("Buttom") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(response: 3.0, dampingFraction: 0.5, blendDuration: 1.0))
//                .animation(Animation.default)
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.linear(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
        }
    }
}

struct AnimationTimingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootCamp()
    }
}
