//
//  SheetsBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/14.
//

import SwiftUI

struct SheetsBootCamp: View {
    @State var showSheet: Bool = false

    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Buttom")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })

            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
                // DO NOT ADD CONDITIONAL LOGIC IN A SHEET
            })
//            .sheet(isPresented: $showSheet, content: {
//             SecondScreen()
            // DO NOT ADD CONDITIONAL LOGIC IN A SHEET
//            })
        }
    }
}
struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
               Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                VStack {
                    Text("This is important information so read carefully and understand the terms and conditions")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }

            })

        }
    }
}
struct SheetsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
       SheetsBootCamp()
        //SecondScreen()
    }
}
