//
//  SegmentedPickerBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/22.
//

import SwiftUI

struct SegmentedPickerBootCamp: View {
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = ["Most Recent", "Most Popular", "Most Liked"]

    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red

        let attributes: [NSAttributedString.Key: Any] = [ .foregroundColor : UIColor.white]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    var body: some View {

        Picker (
            selection: $selection,
            label: Text("Picker"),
            content: {
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            })
        .pickerStyle(SegmentedPickerStyle())
    }
}

struct SegmentedPickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedPickerBootCamp()
    }
}
