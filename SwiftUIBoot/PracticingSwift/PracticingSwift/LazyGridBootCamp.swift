//
//  LazyGridBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2022/12/24.
//

import SwiftUI

struct LazyGridBootCamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),GridItem(.flexible(), spacing: nil, alignment: nil),GridItem(.flexible(), spacing: nil, alignment: nil)
    ]

    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.white)
                .frame(height: 400)

            LazyVGrid(columns: columns) {

                ForEach (0..<50) { index in
                    Rectangle()
                        .frame(height: 150)
                }
            }
        }
    }
}

struct LazyGridBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridBootCamp()
    }
}
