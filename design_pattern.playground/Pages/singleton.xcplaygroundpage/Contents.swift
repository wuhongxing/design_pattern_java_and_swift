//: [Previous](@previous)

import Foundation

class Singleton {
    static let shared = Singleton()
    
    private init() {
        
    }
}

Singleton.shared

