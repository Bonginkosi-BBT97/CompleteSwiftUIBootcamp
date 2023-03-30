//
//  BadgesBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/31.
//

import SwiftUI
// MARK: Can only be used in Lists or Tab Views

struct BadgesBootCamp: View {
    var body: some View {
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(0)
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//
//        }

        List {
            Text("Hello, world!")
                .badge(5)
            Text("Hello, world")
            Text("Hello, world")
            Text("Hello, world")
        }
    }
}

struct BadgesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootCamp()
    }
}
