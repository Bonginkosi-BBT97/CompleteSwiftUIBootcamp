//
//  BackgroundAndOverlayerBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2022/12/14.
//

import SwiftUI

struct BackgroundAndOverlayerBootCamp: View {
    var body: some View {
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//            Text("1")
//                .font(.largeTitle)
//                .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 110, height: 110)
//            )

// Rectangle Example

        Rectangle()
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(.blue)
                    .frame(width: 50, height: 50)
            )
            .background(
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
            )
    }
}

struct BackgroundAndOverlayerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayerBootCamp()
    }
}
