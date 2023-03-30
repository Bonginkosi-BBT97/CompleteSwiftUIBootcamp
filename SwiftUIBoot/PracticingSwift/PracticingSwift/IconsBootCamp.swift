//
//  IconsBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2022/12/14.
//

import SwiftUI

struct IconsBootCamp: View {
    var body: some View {
        Image(systemName: "books.vertical")
            .resizable()
            .aspectRatio(contentMode: .fill)
           // .font(.caption)
            //.font(.system(size: 200))
            .foregroundColor(Color.red)
            .frame(width: 300, height: 30)
            //.clipped()
    }
}

struct IconsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootCamp()
    }
}
