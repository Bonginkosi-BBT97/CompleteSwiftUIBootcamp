//
//  ButtonStyleBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/31.
//

import SwiftUI

struct ButtonStyleBootCamp: View {
    var body: some View {
        VStack {
            Button("Button Title") {

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)

            Button("Button Title") {

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .buttonStyle(.bordered)

            Button("Button Title") {

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)

            Button("Button Title") {

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
        }
        .padding()
    }
}

struct ButtonStyleBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootCamp()
    }
}
