//
//  TextBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2022/12/13.
//

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
        Text( "I will create the eskom se push app with mainly just swiftui")
            .font(.title) //.allows acccess to the modifiers of a component
            //.fontWeight(.semibold)
//            .underline(true, color: Color.red)
//            .strikethrough(true,color: Color.blue)
            //.multilineTextAlignment(.center)
            //.kerning(10) This is for the spacing between the words

    }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
    }
}
