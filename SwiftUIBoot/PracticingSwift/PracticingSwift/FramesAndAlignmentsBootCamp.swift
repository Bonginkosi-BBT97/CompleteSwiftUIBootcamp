//
//  FramesAndAlignmentsBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2022/12/14.
//

import SwiftUI

struct FramesAndAlignmentsBootCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.red)
            .frame(maxWidth:  .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
    }
}

struct FramesAndAlignmentsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FramesAndAlignmentsBootCamp()
    }
}
