//
//  ExtractingFunctionsBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/12.
//

import SwiftUI

struct ExtractingFunctionsBootCamp: View {
    @State var backgroundColor: Color = Color.pink
    var body: some View {
        ZStack {
            //Background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            // content
            contentLayer

        }
    }
   var contentLayer: some View {

        VStack {
            Text("Title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }

    }

    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractingFunctionsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractingFunctionsBootCamp()
    }
}
