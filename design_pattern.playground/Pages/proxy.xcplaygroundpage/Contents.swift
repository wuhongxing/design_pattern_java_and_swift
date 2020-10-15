//: [Previous](@previous)

import Foundation

protocol Image {
    func display()
}

class RealImage: Image {
    private var fileName: String = ""
    
    convenience init(fileName: String) {
        self.init()
        self.fileName = fileName
        loadFromDisk(fileName)
    }
    
    func loadFromDisk(_ fileName: String) {
        print("realimage" + "loading" + fileName)
    }
    
    func display() {
        print("realimage" + "display" + fileName)
    }
}

class ProxyImage: Image {
    private var fileName: String = ""
    private var delegate: RealImage?
    
    convenience init(fileName: String) {
        self.init()
        self.fileName = fileName
    }
    
    func display() {
        if delegate == nil {
            delegate = RealImage(fileName: fileName)
        }
        delegate?.display()
    }
}

var image = ProxyImage(fileName: "test_10mb.png")
image.display()
image.display()

protocol SaveMediaDelegate {
    func save()
}

class MyComputer {
    var delegate: SaveMediaDelegate?
    
    func saveInfo() {
        delegate?.save()
    }
}

class SaveToDisk: SaveMediaDelegate {
    func save() {
        print("save to disk...")
    }
}

class SaveToUSB: SaveMediaDelegate {
    func save() {
        print("save to usb...")
    }
}

let computer = MyComputer()
computer.delegate = SaveToDisk()
computer.saveInfo()

