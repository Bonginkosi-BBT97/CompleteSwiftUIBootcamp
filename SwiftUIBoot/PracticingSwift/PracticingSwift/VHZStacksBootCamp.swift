//
//  VHZStacksBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2022/12/21.
//

import SwiftUI

struct VHZStacksBootCamp: View {

    //V Stacks -> Vertical (Up to down)
    //H Stacks -> Horizontal (Left to Right)
    //Z Stacks -> zIndex (back to front)
    var body: some View {

        ZStack {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350,height: 500, alignment: .center)

            VStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)

                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 100, height: 100)

                HStack {
                    Rectangle()
                        .fill(Color.purple)
                    .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.pink)
                    .frame(width: 75, height: 75)

                    Rectangle()
                        .fill(Color.blue)
                    .frame(width: 25, height: 25)

                }
                .background(Color.white)
            }
            .background(Color.black)
        }
    // Spacing in a V stack
//
//        VStack(alignment: .center, spacing: 0, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//
//        })
    }
}

struct VHZStacksBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        VHZStacksBootCamp()
    }
}
