//
//  BackgroundMaterialsBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/31.
//

import SwiftUI

struct BackgroundMaterialsBootCamp: View {
    var body: some View {
        VStack {
            Spacer()

            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50,height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Color(.black)
        )
    }
}

struct BackgroundMaterialsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootCamp()
    }
}
