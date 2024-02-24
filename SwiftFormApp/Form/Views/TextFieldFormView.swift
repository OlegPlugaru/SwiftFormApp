//
//  TextFieldFormView.swift
//  SwiftFormApp
//
//  Created by Oleg Plugaru on 24.02.2024.
//

import SwiftUI

struct TextFieldFormView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            TextField("Placeholder here", text: .constant(""))
                .frame(maxWidth: .infinity, 
                       maxHeight: 44,
                       alignment: .center)
                .padding(.leading, 5)
                .keyboardType(.default)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.25))
                )
            
            Text("Error here")
                .font(.system(size: 12, weight: .semibold))
                .foregroundColor(.red)
        }
    }
}

#Preview {
    TextFieldFormView()
        .padding()
}
