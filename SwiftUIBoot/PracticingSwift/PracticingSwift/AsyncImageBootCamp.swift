//
//  AsyncImageBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/31.
//

import SwiftUI

struct AsyncImageBootCamp: View {
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//
//        }, placeholder: {
//            ProgressView()
//        })
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }

        }
    }
}

struct AsyncImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootCamp()
    }
}
