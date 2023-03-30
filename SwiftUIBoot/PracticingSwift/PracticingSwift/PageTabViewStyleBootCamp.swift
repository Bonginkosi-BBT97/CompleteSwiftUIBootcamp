//
//  PageTabViewStyleBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/26.
//

import SwiftUI

struct PageTabViewStyleBootCamp: View {
    @State var selectedTab: Int = 0
    let icons: [String] = ["heart.fill", "globe", "house.fill", "person.fill"]
    var body: some View {
        TabView {
            ForEach(icons,id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(40)

            }
        }
        .background( RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300))
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
    }
}

struct PageTabViewStyleBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PageTabViewStyleBootCamp()
    }
}
