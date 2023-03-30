//
//  ViewModelBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/29.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false

    init() {
        getFruit()
    }

    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    func getFruit() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Bananas", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now()+3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
}

struct ViewModelBootCamp: View {
   // @State var fruitArray: [FruitModel] = []

    // @StateOject =  USE THIS ON CREATION/ INIT
    // @ObesrvedObject = USE THIS AS SUBVIEW
   @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()

    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {

                    ForEach (fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform:fruitViewModel.deleteFruit)

                    }
                }

            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing: NavigationLink(destination: RandomSScreen( fruitViewModel: fruitViewModel), label: { Image(systemName: "arrow.right")
                .font(.title)
                })
            )
        }
    }
}

struct RandomSScreen:View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    var body: some View {
        ZStack {

            Color.green.ignoresSafeArea()
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
        }
    }
}

struct ViewModelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootCamp()

    }
}
