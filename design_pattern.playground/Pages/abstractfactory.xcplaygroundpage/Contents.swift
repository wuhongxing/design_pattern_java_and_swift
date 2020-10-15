//: [Previous](@previous)

import Foundation

protocol IButton {
    func display()
}
protocol ITextField {
    func display()
}

protocol ISkinFactory {
    static func createButton() -> IButton
    static func createTextField() -> ITextField
}

class RedButton: IButton {
    func display() {
        print("display red button")
    }
}

class BlueButton: IButton {
    func display() {
        print("display blue button")
    }
}

class RedTextField: ITextField {
    func display() {
        print("display red textfield")
    }
}

class BlueTextField: ITextField {
    func display() {
        print("display blue textfield")
    }
}

class RedSkinFactory: ISkinFactory {
    static func createButton() -> IButton {
        return RedButton()
    }
    
    static func createTextField() -> ITextField {
        return RedTextField()
    }
}

class BlueSkinFactory: ISkinFactory {
    static func createButton() -> IButton {
        return BlueButton()
    }
    
    static func createTextField() -> ITextField {
        return BlueTextField()
    }
}

var factory = RedSkinFactory.createButton()
factory.display()
