//
//  ToggleBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/22.
//

import SwiftUI

struct ToggleBootCamp: View {
    @State var toggleIsOn: Bool = false

    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change status")
                })
            .toggleStyle(SwitchToggleStyle(tint: toggleIsOn ? Color.green : Color.red ))

            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootCamp()
    }
}
