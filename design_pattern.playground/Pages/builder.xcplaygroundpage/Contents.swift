//: [Previous](@previous)

import Foundation

class Product {
    var partA: String = ""
    var partB: String = ""
    var partC: String = ""
    
    convenience init(_ builder: Builder) {
        self.init()
        self.partA = builder.partA
        self.partB = builder.partB
        self.partC = builder.partC
    }
    
    func toString() {
        print("partA: \(partA) \npartB: \(partB)\npartC: \(partC)")
    }
    
    class Builder {
        var partA: String = ""
        var partB: String = ""
        var partC: String = ""
        
        func setPartA(_ partA: String) -> Self {
            self.partA = partA
            return self
        }
        
        func setPartB(_ partB: String) -> Self {
            self.partB = partB
            return self
        }
        
        func setPartC(_ partC: String) -> Self {
            self.partC = partC
            return self
        }
        
        func build() -> Product {
            return Product(self)
        }
    }
}


var product = Product
    .Builder()
    .setPartA("part-A")
    .setPartB("part-B")
    .setPartC("part-C")
    .build()
product.toString()



class Project {
    private var demand: String = ""
    private var framework: String = ""
    private var outline: String = ""
    private var test: String = ""
    
    func setDemand(_ demand: String) {
        self.demand = demand
    }
    
    func setFramework(_ framework: String) {
        self.framework = framework
    }
    
    func setOutline(_ outline: String) {
        self.outline = outline
    }
    
    func setTest(_ test: String) {
        self.test = test
    }
}

extension Project: CustomStringConvertible {
    var description: String {
        return "demand: \(demand) \nframework: \(framework) \noutline: \(outline) \ntest: \(test)"
    }
}

class Builder {
    var project = Project()
    
    func demand() {
       
    }
    
    func framework() {
        
    }
    
    func outline() {
        
    }
    
    func test() {
        
    }
    
    func build() -> Project {
        return project
    }
}

class OAConcreteBuilder: Builder {
    override func demand() {
        project.setDemand("OA 需求阶段")
        print("OA 需求阶段")
    }
    
    override func framework() {
        project.setFramework("OA 架构阶段")
        print("OA 架构阶段")
    }
    
    override func outline() {
        project.setOutline("OA 概要阶段")
        print("OA 概要阶段")
    }
    
    override func test() {
        project.setTest("OA 测试阶段")
        print("OA 测试阶段")
    }
}

class Director {
    func build(_ builder: Builder) -> Project {
        builder.demand()
        builder.framework()
        builder.outline()
        builder.test()
        return builder.build()
    }
}

var builder = OAConcreteBuilder()
var director = Director()
var project = director.build(builder)
print(project)
