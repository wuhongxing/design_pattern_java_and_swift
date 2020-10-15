//: [Previous](@previous)

import Foundation

protocol IEquip {
    func caculateAttack() -> Int
    func description() -> String
}

class ArmEquip: IEquip {
    func caculateAttack() -> Int {
        return 20
    }
    
    func description() -> String {
        return "屠龙宝刀"
    }
}

protocol IEquipDecorator: IEquip {

}

class BlueGemDecorator: IEquipDecorator {
    private var iEquip: IEquip!
    convenience init(_ iEquip: IEquip) {
        self.init()
        self.iEquip = iEquip
    }
    
    func caculateAttack() -> Int {
        return iEquip.caculateAttack() + 20
    }
    
    func description() -> String {
        return iEquip.description() + "+蓝宝石"
    }
}

class RedGemDecorator: IEquipDecorator {
    private var iEquip: IEquip!
    convenience init(_ iEquip: IEquip) {
        self.init()
        self.iEquip = iEquip
    }
    
    func caculateAttack() -> Int {
        return iEquip.caculateAttack() + 200
    }
    
    func description() -> String {
        return iEquip.description() + "+红宝石"
    }
}

var iEquip = BlueGemDecorator(RedGemDecorator(ArmEquip()))
print(iEquip.caculateAttack())
print(iEquip.description())
