//
//  GradientsBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2022/12/13.
//

import SwiftUI

struct GradientsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red

                // 1) Linear: Corner to corner
//                LinearGradient (
//                    gradient: Gradient(colors: [Color.red, Color.blue, Color.white]), startPoint: .topLeading , endPoint: .bottomTrailing)
         //   )
                // 2) Radial: Outside inside
                RadialGradient (
                    gradient: Gradient(colors: [Color.red, Color.blue, Color.white]), center: .center, startRadius: 5, endRadius: 500)
                )

        // 3) Angular gradient

            .frame(width: 300, height: 200)
    }
}

struct GradientsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootCamp()
    }
}
