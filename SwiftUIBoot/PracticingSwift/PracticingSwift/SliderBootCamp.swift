//
//  SliderBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/24.
//

import SwiftUI

struct SliderBootCamp: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red

    var body: some View {
        VStack {
            Text("Rating:")
            Text( String(format: "%.0f", sliderValue))
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 0...100)
            //Slider(value: $sliderValue, in: 1...10, step: 0.5)
            Slider(value: $sliderValue,in: 1...5, step: 1.0, onEditingChanged: {(_) in color = .green}, minimumValueLabel: Text("1"), maximumValueLabel: Text("5"), label: {Text("Title")})
                .accentColor(.red)
        }

    }
}

struct SliderBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootCamp()
    }
}
