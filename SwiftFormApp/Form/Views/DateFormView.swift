//
//  DateFormView.swift
//  SwiftFormApp
//
//  Created by Oleg Plugaru on 24.02.2024.
//

import SwiftUI

struct DateFormView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            DatePicker("", 
                       selection: .constant(Date()),
                       displayedComponents: [.date])
            .labelsHidden()
            .frame(maxWidth: .infinity,
                   alignment: .leading)
            
            Text("Error here")
                .font(.system(size: 12, weight: .semibold))
                .foregroundColor(.red)
        }
    }
}

#Preview {
    DateFormView()
        .padding()
}
