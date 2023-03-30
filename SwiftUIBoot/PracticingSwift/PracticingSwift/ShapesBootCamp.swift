//
//  ShapesBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2022/12/13.
//

import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
        Circle()
//            .fill(Color.green)
//            .foregroundColor(.blue)
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.red, lineWidth: 25)
            .stroke(Color.blue ,style: StrokeStyle(lineWidth: 15, lineCap: .butt, dash: [30]))
            .frame(width: 200,height: 10000)

    }
}

struct ShapesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootCamp()
    }
}
