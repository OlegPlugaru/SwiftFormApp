//
//  ButtonFormView.swift
//  SwiftFormApp
//
//  Created by Oleg Plugaru on 24.02.2024.
//

import SwiftUI

struct ButtonFormView: View {
    var body: some View {
        Button("Title here") {
            
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
    ButtonFormView()
        .padding()
}
