//
//  BindingBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/13.
//

import SwiftUI

struct BindingBootCamp: View {
    @State var backgroundColor: Color = Color.gray
    @State var title =  "Press Button"
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)

            }
        }
    }
}

struct ButtonView: View {
    @Binding var backgroundColor : Color
    @State var buttonColor = Color.blue
    @Binding var title: String
    @State var toggled: Bool = false

    var body: some View {
        Button(action: {
            if toggled {
                backgroundColor = .orange
                buttonColor = Color.pink
                title = "This button has been pressed"
                toggled.toggle()
            } else {
                backgroundColor = .green
                buttonColor = Color.yellow
                title = "This button has been pressed again"
                toggled.toggle()
            }

        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

struct BindingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootCamp()
    }
}
