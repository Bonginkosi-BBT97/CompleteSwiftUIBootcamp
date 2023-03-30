//
//  ButtonBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2022/12/26.
//

import SwiftUI

struct ButtonBootCamp: View {

    @State var title: String =  "This is my Title"
    var body: some View {

        VStack(spacing: 20) {
            Text(title)

            Button("Press Me ") {
                self.title = "This button was pressed"
            }
        }

    }
}

struct ButtonBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootCamp()
    }
}
