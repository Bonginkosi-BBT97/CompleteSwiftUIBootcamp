//
//  SafeAreaBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2022/12/26.
//

import SwiftUI

struct SafeAreaBootCamp: View {
    var body: some View {
        ZStack{
            //Background
            Color.blue
                .edgesIgnoringSafeArea(.all)

          //Foreground
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .frame(maxWidth: 500, maxHeight: 700)
            .background(Color.red)
        }

    }
}

struct SafeAreaBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootCamp()
    }
}
