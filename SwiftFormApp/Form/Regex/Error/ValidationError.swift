//
//  ValidationError.swift
//  SwiftFormApp
//
//  Created by Oleg Plugaru on 25.02.2024.
//

import Foundation

enum ValidationError: Error {
    case custom(message: String)
}

extension ValidationError {
    
    var errorDescription: String {
        
        switch self {
        case .custom(let message):
            return message
        }
    }
}
