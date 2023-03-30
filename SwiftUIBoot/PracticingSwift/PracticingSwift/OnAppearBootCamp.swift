//
//  onAppearBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/29.
//

import SwiftUI

struct OnAppearBootCamp: View {
    @State var myText: String = "Start text."
    @State var count: Int = 0
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .navigationTitle("On Appear: \(count)")
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                myText = "This is the new text!"
            }
        }
    }
}

struct OnAppearBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootCamp()
    }
}
