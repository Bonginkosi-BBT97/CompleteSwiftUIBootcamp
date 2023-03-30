//
//  ContextMenuBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/20.
//

import SwiftUI
//MARK: Click an hold item to show menu items
struct ContextMenuBootCamp: View {
    @State var backgroundColor = Color.blue
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(30)
        .contextMenu {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }
            Button {
                backgroundColor = .red
            } label: {
                Text("Report post")
            }
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            }



        }
    }
}

struct ContextMenuBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootCamp()
    }
}
