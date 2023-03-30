//
//  SpacerBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2022/12/21.
//

import SwiftUI

struct SpacerBootCamp: View {
    var body: some View {
        HStack (spacing: nil){
            Rectangle()
                .frame(width: 100,height: 100)
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            Rectangle()
                .fill(Color.red)
                .frame(width: 100,height: 100)
        }

        .background(Color.blue)
    }
}

struct SpacerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootCamp()
    }
}
