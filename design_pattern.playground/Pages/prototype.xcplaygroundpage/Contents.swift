//: [Previous](@previous)

import Foundation

class ConcretePrototype: NSObject, NSCopying {
    required override init() {
        
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let obj = type(of: self).init()
        obj.name = self.name
        obj.age = self.age
        return obj
    }
    
    var name: String = ""
    var age: Int = 0
}

var concrete = ConcretePrototype()
concrete.name = "test"
concrete.age = 10
var cloneConcrete = concrete.copy() as! ConcretePrototype
print(cloneConcrete.name, cloneConcrete.age)

