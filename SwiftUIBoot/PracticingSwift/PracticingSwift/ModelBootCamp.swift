//
//  ModelBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/29.
//

import SwiftUI

struct UserModel: Identifiable {

    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerfied: Bool
}

struct ModelBootCamp: View {
    @State var  users: [UserModel] = [
        UserModel(displayName: "Nick", userName: "Nick123", followerCount: 100, isVerfied: true),
        UserModel(displayName: "Emily", userName: "Emily123", followerCount: 55, isVerfied: false),
        UserModel(displayName: "Chris", userName: "Ninja", followerCount: 355, isVerfied: false),
        UserModel(displayName: "Sam", userName: "SamWaRato", followerCount: 10025, isVerfied: true)
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack {
                        Circle()
                            .frame(width: 35,height: 35)
                        VStack (alignment: .leading){
                            Text(user.displayName)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerfied {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }

                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }

            }
            .listStyle(InsetListStyle())
            .navigationTitle("Users")
        }
    }
}

struct ModelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootCamp()
    }
}
