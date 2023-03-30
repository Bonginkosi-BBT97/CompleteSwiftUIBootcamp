//
//  EnviromentObjectBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/30.
//

import SwiftUI

class EnviromentViewModel: ObservableObject {
    @Published var dataArray: [String] = []

    init() {
        getData()
    }

    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iMac", "Apple Watch", "iPad"])
    }
}

struct EnviromentObjectBootCamp: View {
    @StateObject var viewModel: EnviromentViewModel = EnviromentViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}
struct DetailView: View {
    let selectedItem: String
    var body: some View {
        ZStack {
            //background
            Color.orange.ignoresSafeArea()

            //foreground
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }

        }
    }
}

struct  FinalView: View {
    @EnvironmentObject var viewModel: EnviromentViewModel
    var body: some View {
        ZStack {
            //background
            LinearGradient(gradient: Gradient(colors: [Color.secondary,Color.green]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            //foreground
            ScrollView {
                VStack(spacing: 20 ) {

                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnviromentObjectBootCamp_Previews: PreviewProvider {
    static var previews: some View {
       EnviromentObjectBootCamp()
       // DetailView(selectedItem: "iPhone")
        //FinalView()
    }
}
