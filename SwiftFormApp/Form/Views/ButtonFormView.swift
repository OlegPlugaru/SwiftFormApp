//
//  ButtonFormView.swift
//  SwiftFormApp
//
//  Created by Oleg Plugaru on 24.02.2024.
//

import SwiftUI

struct ButtonFormView: View {
    
    typealias ButttonActionHandler = (_ formId: FormField) -> Void
    
    let component: ButtonFormComponent
    let handler: ButttonActionHandler
    
    init(component: ButtonFormComponent, handler: @escaping ButtonFormView.ButttonActionHandler) {
        self.component = component
        self.handler = handler
    }
    
    var body: some View {
        Button(component.title) {
            handler(component.formId)
        }
        .frame(maxWidth: .infinity, 
               minHeight: 44,
               alignment: .center)
        .background(Color.blue)
        .foregroundColor(.white)
        .font(.system(size: 16, weight: .bold))
        .cornerRadius(8)
    }
}

#Preview {
    ButtonFormView(component: .init(id: .submit, title: "title here")) { _ in }
        .padding()
}
