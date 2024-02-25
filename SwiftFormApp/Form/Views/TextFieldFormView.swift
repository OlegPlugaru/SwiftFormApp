//
//  TextFieldFormView.swift
//  SwiftFormApp
//
//  Created by Oleg Plugaru on 24.02.2024.
//

import SwiftUI

struct TextFieldFormView: View {
    
    @EnvironmentObject var contentBuilder: FormContentBuilderImpl
    @State private var text = ""
    @State private var error: ValidationError?
    
    let component: TextFormComponent
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            TextField(component.placeholder, text: $text)
                .padding()
                .frame(maxWidth: .infinity,
                       maxHeight: 44,
                       alignment: .center)
                .padding(.leading, 5)
                .keyboardType(component.keyboardType)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(error == nil ? Color.gray.opacity(0.25) : Color.red)
                )
            
            Text(error?.errorDescription ?? "")
                .font(.system(size: 12, weight: .semibold))
                .foregroundColor(.red)
        }
        .onChange(of: text, 
                  perform: { value in
            
            contentBuilder.update(text, in: component)
            
            // Perform  validation
            error = component
                .validations
                .compactMap { $0.validate(text)}
                .first
        })
    }
}

#Preview {
    TextFieldFormView(component: .init(id: .firstName, placeholder: ""))
        .padding()
        .environmentObject(FormContentBuilderImpl())
}
