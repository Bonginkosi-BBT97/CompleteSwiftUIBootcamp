//
//  ExtractSubviewBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/13.
//

import SwiftUI

struct ExtractSubviewBootCamp: View {
    var body: some View {
        ZStack {
            Color(.blue).edgesIgnoringSafeArea(.all)
            contentLayer
        }
    }
    var contentLayer: some View {

        HStack {
            myItem(title: "Apples", count: 1, color: .red)
            myItem(title: "Oranges", count: 10, color: .orange)
            myItem(title: "Bananas", count: 34, color: .yellow)
        }
    }
}

struct ExtractSubviewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewBootCamp()
    }
}

struct myItem: View {
    let title: String
    let count: Int
    let color : Color

    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
