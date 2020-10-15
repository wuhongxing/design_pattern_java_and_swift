//: [Previous](@previous)

import Foundation

class Course {
    private var name: String = ""
    private var article: String = ""
    private var video: String = ""
}

class Handler {
    var handler: Handler!
    
    func setNextHandler(handler: Handler) {
        self.handler = handler
    }
    
    func deploy(course: Course) {
        
    }
}
