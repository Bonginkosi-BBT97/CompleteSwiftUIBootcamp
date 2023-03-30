//
//  DarkModeBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/26.
//

import SwiftUI

struct DarkModeBootCamp: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is PRIMARY") //Adaptive
                        .foregroundColor(.primary)
                    Text("This color is SECONDARY") //Adaptive
                        .foregroundColor(.secondary)
                    Text("This color is BLACK")
                        .foregroundColor(.black) // Non globally adaptive
                    Text("This color is WHITE")
                        .foregroundColor(.white) // Non globally adaptive
                    Text("This color is RED")
                        .foregroundColor(.red) // Adaptive
                    Text("This color is a custom globally adaptive")
                        .foregroundColor(Color("AdaptiveColor")) // Adaptive

                    Text("This color is a custom locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkModeBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeBootCamp()
                .preferredColorScheme(.light)
            DarkModeBootCamp()
                .preferredColorScheme(.dark)

        }

    }
}
