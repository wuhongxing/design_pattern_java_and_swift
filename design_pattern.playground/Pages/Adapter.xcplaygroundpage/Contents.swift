//: [Previous](@previous)

import Foundation

class Mobile {
    func inputPower(_ v5power: V5Power) {
        print("使用v5的电源: " + v5power.name)
    }
}

class V5Power {
    var name: String = ""
    
}

class V220Power {
    var name: String = ""
    var age: Int = 0
}

class V5PowerAdapter {
    static func adapter(_ v220Power: V220Power) -> V5Power {
        var v5Power = V5Power()
        v5Power.name = v220Power.name
        return v5Power
    }
}

var mobile = Mobile()

var v5Power = V5Power()
v5Power.name = "V5"
mobile.inputPower(v5Power)

var v220Power = V220Power()
v220Power.name = "V220"
v220Power.age = 100
var v5PowerAdapter = V5PowerAdapter.adapter(v220Power)
mobile.inputPower(v5PowerAdapter)
