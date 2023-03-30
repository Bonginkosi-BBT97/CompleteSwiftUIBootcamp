//
//  ScrollViewsBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2022/12/21.
//

import SwiftUI

struct ScrollViewsBootCamp: View {
    var body: some View {
        // Horizontal Scroll view
        ScrollView(.horizontal, showsIndicators: false, content: {
                   HStack {
                       ForEach(0..<6) { index in
                           Rectangle()
                               .fill(Color.blue)
                               .frame(width:150, height: 150)

                       }
                   }
               })

         //Vetrical Scroll view with a hiddent indicator for a more an infintity feel
        ScrollView(.vertical, showsIndicators: false, content: {

            VStack {
                ForEach(0..<6) { index in
                    Text("Item at index \(index)")
                    Rectangle()
                        .fill(Color.red)
                        .frame(height: 300)

                }
            }
        })
    }
}


struct ScrollViewsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewsBootCamp()
    }
}
