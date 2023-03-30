//
//  PickerBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/22.
//

import SwiftUI

struct PickerBootCamp: View {
    @State  var selection: String = "1"

    var body: some View {
        VStack {
            HStack {
                Text("Age:")
                Text(selection)
            }

            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
                    ForEach(18..<100) {
                        number in Text("\(number)")
                            .font(.headline)
                            .foregroundColor(.red)
                            .tag("\(number)")
                    }
            })
            .pickerStyle(.menu)
            
        }
    }
}

struct PickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootCamp()
    }
}
