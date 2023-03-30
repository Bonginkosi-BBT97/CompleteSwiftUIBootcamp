//
//  PaddingAndSpacerBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2022/12/21.
//

import SwiftUI

struct PaddingAndSpacerBootCamp: View {
    var body: some View {

        VStack (alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)

            Text("This is the description of what we will do on this screen. It is mutiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3), radius: 10, x: 0.0, y: 10
                )

        )
    }
}

struct PaddingAndSpacerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootCamp()
    }
}
