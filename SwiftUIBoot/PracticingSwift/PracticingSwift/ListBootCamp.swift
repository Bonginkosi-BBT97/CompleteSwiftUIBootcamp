//
//  ListBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/20.
//

import SwiftUI

struct ListBootCamp: View {
    @State var fruits: [String] = ["Apple", "Orange", "Banana", "Peach"]
    @State var veggies: [String] = ["Tomato", " potato", "carrot"]
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack{
                            Text("FRUITS")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                        ForEach(fruits, id: \.self) {
                            fruit in Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding(.vertical)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.blue)
                }

                Section(header: Text("Veggies")
                    .foregroundColor(.purple)
                ) {
                    ForEach(veggies, id: \.self) {
                        veggie in Text(veggie.capitalized)
                    }
                }

            }
            .accentColor(.purple)
            //.listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(), trailing:addButton)
        }
        .accentColor(.red)
    }
    var addButton: some View {
        Button("Add", action: {add()})
    }

    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    func move(indices: IndexSet, newOffSet: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffSet)
    }
    func add() {
        fruits.append("Coconut")
    }
}

struct ListBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootCamp()
    }
}
