//
//  colorsBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2022/12/13.
//

import SwiftUI

struct ColorsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color.primary)
            .frame(width: 300, height: 200)
            .shadow(color: Color.blue, radius: 10, x: -20, y: -20)
    }
}

struct ColorsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootCamp()
    }
}
