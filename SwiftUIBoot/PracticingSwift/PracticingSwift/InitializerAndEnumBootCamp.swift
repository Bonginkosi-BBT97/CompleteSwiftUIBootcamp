//
//  initializerAndEnumBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2022/12/21.
//

import SwiftUI

struct initializerAndEnumBootCamp: View {
    let background: Color
    let count: Int
    let title : String


    init(count: Int, fruit: Fruit) {
        self.count = count

        if fruit == .Apples {
            self.title = "Apples"
            self.background = .red
        }else {
            self.title = "Oranges"
            self.background = .orange
        }
    }

    enum Fruit {

        case Apples
        case Oranges
    }

    var body: some View {
        VStack {
            Text("\(count)")
                .underline()
                .foregroundColor(Color.white)
                .font(.largeTitle)

            Text(title)
                .foregroundColor(Color.white)
                .font(.largeTitle)
        }
        .frame(width: 150,height: 150)
        .background(background)
        .cornerRadius(10)

    }
}

struct initializerAndEnumBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            initializerAndEnumBootCamp(count: 4, fruit: .Apples)
            initializerAndEnumBootCamp(count: 5, fruit: .Oranges)
        }

    }
}
