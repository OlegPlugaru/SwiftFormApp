//
//  FormItem.swift
//  SwiftFormApp
//
//  Created by Oleg Plugaru on 24.02.2024.
//

import Foundation
import UIKit
import SwiftUI

// Implementation for a form item

protocol FormItem {
    var id: UUID { get }
    var formId: FormField { get }
    var validations: [ValidationManager] { get }
    var val: Any? { get }
}

// Unique enum for our form

enum FormField {
    case firstName
    case lastName
    case email
    case dob
    case submit
}

// Base Form Component

class FormComponent: FormItem, Identifiable {
    
    let id = UUID()
    let formId: FormField
    var validations: [ValidationManager]
    var val: Any?
   
    init(_ id: FormField,
         validations: [ValidationManager] = []) {
        self.formId = id
        self.validations = validations
    }
}

// Text Component

final class TextFormComponent: FormComponent {
    
    let placeholder: String
    let keyboardType: UIKeyboardType
    
    init(id: FormField,
         placeholder: String,
         keyboardType: UIKeyboardType = .default,
         validations: [ValidationManager] = []) {
        self.placeholder = placeholder
        self.keyboardType = keyboardType
        super.init(id, validations: validations)
    }
}

// Date Component

final class DateFormComponent: FormComponent {
    
    let mode: DatePickerComponents
    
    init(id: FormField,
         mode: DatePickerComponents, 
         validations: [ValidationManager] = []) {
        self.mode = mode
        super.init(id, validations: validations)
    }
}

// Button Component

final class ButtonFormComponent: FormComponent {
    
    let title: String
    
    init(id: FormField, title: String) {
        self.title = title
        super.init(id)
    }
}
