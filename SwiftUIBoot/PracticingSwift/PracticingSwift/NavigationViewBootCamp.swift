//
//  NavigationViewBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/19.
//

import SwiftUI
// MARK: Never add a naviagtion view inside another navigation view becaue you only need one

struct NavigationViewBootCamp: View {
    var body: some View {
        NavigationView{
            ScrollView {
                NavigationLink("Hello world") { MySecondScreen()

                }
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inbox")
        }
    }
}

struct MySecondScreen: View {
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            Text("My Second Screen")
        }
        .navigationTitle("Green Second Srceen")
    }
}

struct NavigationViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootCamp()
    }
}
