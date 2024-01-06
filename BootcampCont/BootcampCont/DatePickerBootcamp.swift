//
//  DatePickerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 16/07/2023.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    
    let endingDate: Date = Date()
    
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .full
        return formatter
    }
    
    var body: some View {
        
        VStack {
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from: selectedDate))
            
            DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date, .hourAndMinute] )
                .accentColor(Color.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
                    
                )
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
