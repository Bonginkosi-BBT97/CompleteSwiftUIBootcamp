//
//  AppStrorageBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/31.
//

import SwiftUI

struct AppStrorageBootCamp: View {
    //@State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?

    var body: some View {
        VStack (spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            if let name = currentUserName {

                Text(name)
            }

            Button {
                let name = "Bobo"
                currentUserName = name
               // UserDefaults.standard.set(name, forKey: "name")

            } label: {
                Text("Save".uppercased())

            }
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStrorageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStrorageBootCamp()
    }
}
