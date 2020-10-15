//: [Previous](@previous)

import Foundation

protocol ILogger {
    func writeLogger()
}

class DatabaseLogger: ILogger {
    func writeLogger() {
        print("database wirte logger")
    }
}

class FileLogger: ILogger {
    func writeLogger() {
        print("file wirte logger")
    }
}

enum LoggerType {
    case db
    case file
}

class LoggerFactory {
    static func createLogger(with type: LoggerType) -> ILogger {
        switch type {
        case .db:
            return DatabaseLogger()
        case .file:
            return FileLogger()
        }
    }
}

protocol ILoggerFactory {
    static func createLogger() -> ILogger
}

class DatabaseLoggerFactory: ILoggerFactory {
    static func createLogger() -> ILogger {
        return DatabaseLogger()
    }
}

class FileLoggerFactory: ILoggerFactory {
    static func createLogger() -> ILogger {
        return FileLogger()
    }
}

//var logger = DatabaseLoggerFactory.createLogger()
//logger.writeLogger()
//var logger1 = FileLoggerFactory.createLogger()
//logger1.writeLogger()
FileLoggerFactory.createLogger().writeLogger()
DatabaseLoggerFactory.createLogger().writeLogger()
