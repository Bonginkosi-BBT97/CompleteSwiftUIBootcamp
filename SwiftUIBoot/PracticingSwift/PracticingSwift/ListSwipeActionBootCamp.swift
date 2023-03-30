//
//  ListSwipeActionBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/31.
//

import SwiftUI

struct ListSwipeActionBootCamp: View {
    @State var fruits: [String] = ["Banana", "Apple", "Peach", "Orange"]
    var body: some View {
        List {
            ForEach(fruits, id: \.self ) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {

                        }
                        .tint(.green)
                        Button("Save") {

                        }
                        .tint(.blue)
                        Button("Junk") {

                        }
                        .tint(.black)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button ("Share") {

                        }
                        .tint(.yellow)
                    }
            }
           // .onDelete(perform: delete)
        }
    }
    func delete(indexSet: IndexSet) {

    }
}

struct ListSwipeActionBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionBootCamp()
    }
}
