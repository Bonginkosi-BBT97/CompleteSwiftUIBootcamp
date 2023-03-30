//
//  TabViewBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/26.
//

import SwiftUI

struct TabViewBootCamp: View {
    @State var selectedTab: Int = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectTab: $selectedTab)
                .tabItem {
                    Image (systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)

            Text("BROSWE TAB")
            .tabItem {
                Image (systemName: "globe")
                Text("Browse")
            }
            .tag(1)
            Text("PROFILE TAB")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .accentColor(.red)
    }
}

struct TabViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootCamp()
    }
}

struct HomeView: View {
    @Binding  var selectTab: Int
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.top)

            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Button {
                    selectTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .background(Color.white)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }

            }

        }

    }
}
