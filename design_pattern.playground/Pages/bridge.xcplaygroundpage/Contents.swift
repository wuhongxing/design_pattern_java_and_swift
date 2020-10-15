//: [Previous](@previous)

import Foundation

protocol DrawAPI {
    func drawCircle(radius: Int, x: Int, y: Int)
}

class RedCircle: DrawAPI {
    func drawCircle(radius: Int, x: Int, y: Int) {
        print("RedCirle: \n")
        print(radius + x + y)
    }
}

class GreenCircle: DrawAPI {
    func drawCircle(radius: Int, x: Int, y: Int) {
        print("GreenCirle: \n")
        print(radius + x + y)
    }
}

class Shape {
    var drawAPI: DrawAPI!
    
    convenience init(_ drawAPI: DrawAPI) {
        self.init()
        self.drawAPI = drawAPI
    }
    
    func draw() {
        
    }
}

class Circle: Shape {
    private var radius: Int = 0
    private var x: Int = 0
    private var y: Int = 0
    
    convenience init(radius: Int, x: Int, y: Int, drawAPI: DrawAPI) {
        self.init(drawAPI)
        self.radius = radius
        self.x = x
        self.y = y
        
    }
    
    override func draw() {
        drawAPI.drawCircle(radius: radius, x: x, y: y)
    }
}

var circle = Circle(radius: 10, x: 10, y: 100, drawAPI: RedCircle())
circle.draw()

var circle1 = Circle(radius: 10, x: 20, y: 100, drawAPI: GreenCircle())
circle1.draw()
