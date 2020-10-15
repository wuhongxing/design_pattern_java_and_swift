//: [Previous](@previous)

import Foundation

protocol IWorker {
    func workOneDay()
    func enterCompany()
    func work()
    func exitCompany()
    
    var isNeedExit: Bool { get }
}

extension IWorker {
    func workOneDay() {
        enterCompany()
        work()
        if isNeedExit {
            exitCompany()
        }
    }
}

class ITWorker: IWorker {
    func enterCompany() {
        print("进入公司")
    }
    
    func work() {
        print("工作")
    }
    
    func exitCompany() {
        print("离开公司")
    }
    
    var isNeedExit: Bool {
        return false
    }
}

var worker = ITWorker()
worker.workOneDay()
