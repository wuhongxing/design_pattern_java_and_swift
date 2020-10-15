import UIKit

class Chart {
    private var type: String!
    
    convenience init(type: String) {
        self.init()
        self.type = type
        switch type {
        case "圆形":
            print("初始化圆形")
        case "柱形":
            print("初始化柱形")
        case "折线":
            print("初始化折线")
        default:
            break
        }
    }
    
    public func display() {
        switch type {
        case "圆形":
            print("显示圆形")
        case "柱形":
            print("显示柱形")
        case "折线":
            print("显示折线")
        default:
            break
        }
    }
}

var chart = Chart(type: "圆形")
chart.display()

protocol IChart {
    func display();
}

class HistogramChart: IChart {
    init() {
        print("初始化柱形")
    }
    
    func display() {
        print("显示柱形")
    }
}

class PieChart: IChart {
    init() {
        print("初始化圆形")
    }
    
    func display() {
        print("显示圆形")
    }
}

class LineChart: IChart {
    init() {
        print("初始化折线")
    }
    
    func display() {
        print("显示折线")
    }
}

enum ChartType {
    case line
    case histogram
    case pie
}

class ChartFactory {
    static func getChart(with type: ChartType) -> IChart {
        switch type {
        case .line:
            return LineChart()
        case .pie:
            return PieChart()
        case .histogram:
            return HistogramChart()
        }
    }
}

var chart1 = ChartFactory.getChart(with: .line)
chart1.display()
var chart2 = ChartFactory.getChart(with: .pie)
chart2.display()
