//
//  DatePickerBootCamp.swift
//  PracticingSwift
//
//  Created by Bonginkosi Tshabalala on 2023/01/24.
//

import SwiftUI

struct DatePickerBootCamp: View {
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()

    var dateFormatter: DateFormatter {
        let formatter =  DateFormatter()
        formatter.dateStyle = .short  //.medium
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        VStack {
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
                .padding()
            // DatePicker("Select a Date (date and time)", selection: $selectedDate)
             // DatePicker("Select a date (data or time)", selection: $selectedDate , displayedComponents: [.date])
             DatePicker("Select a customized range of dates  ", selection: $selectedDate , in: startingDate...endingDate)
                 .accentColor(Color.red)
                 .font(.headline)
                 .datePickerStyle(.graphical)
        }

    }
}

struct DatePickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootCamp()
    }
}
