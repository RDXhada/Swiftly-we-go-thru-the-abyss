//import Foundation
//protocol Fillable {
//    var color: String { set get }
//}
//
//protocol VisualComponent: Fillable {
//    //минимално покриващ правоъгълник
//    var boundingBox: Rect { get }
//    var parent: VisualComponent? { get }
//    func draw()
//}
//
//protocol VisualGroup: VisualComponent {
//    //броят деца
//    var numChildren: Int { get }
//    //списък от всички деца
//    var children: [VisualComponent] { get }
//    //добавяне на дете
//    mutating func add(child: VisualComponent)
//    //премахване на дете
//    mutating func remove(child: VisualComponent)
//    //премахване на дете от съответния индекс - 0 базиран
//    mutating func removeChild(at: Int)
//}
//
//struct Point {
//    var x: Double
//    var y: Double
//}
//
//struct Rect {
//    //top-left
//    var top: Point
//    var width: Double
//    var height: Double
//
//    init(x: Double, y: Double, width: Double, height: Double) {
//        top = Point(x: x, y: y)
//        self.width = width
//        self.height = height
//    }
//}
//
////ако ипредпочитате класове
////add implementation details below
//class Triangle: VisualComponent {
//    var boundingBox: Rect
//    var color: String
//
//    var parent: VisualComponent?
//
//    func draw() {
//        //TODO:
//    }
//
//    init(a: Point, b: Point, c: Point, color: String) {
//          let minX = min(a.x, b.x, c.x)
//          let maxX = max(a.x, b.x, c.x)
//          let minY = min(a.y, b.y, c.y)
//          let maxY = max(a.y, b.y, c.y)
//
//          let width = maxX - minX
//          let height = maxY - minY
//
//          boundingBox = Rect(x: minX, y: minY, width: width, height: height)
//          self.color = color
//      }
//}
//
//class Rectangle: VisualComponent {
//    var boundingBox: Rect
//    var color: String
//
//    var parent: VisualComponent?
//
//    func draw() {
//        //TODO:
//    }
//
//    init(x: Double, y: Double, width: Double, height: Double, color: String) {
//        boundingBox = Rect(x: x, y: y, width: width, height: height)
//        self.color = color
//    }
//}
//
//class Circle: VisualComponent {
//    var boundingBox: Rect
//    var color: String
//
//    var parent: VisualComponent?
//
//    func draw() {
//        //TODO:
//    }
//
//
//    init(x: Double, y: Double, r: Double, color: String) {
//        let width = r * 2
//        let height = r * 2
//        boundingBox = Rect(x:  x - r, y: y - r, width: width, height: height)
//        self.color = color
//    }
//
//}
//
//class Path: VisualComponent {
//    var boundingBox: Rect
//    var color: String
//    var parent: VisualComponent?
//
//    func draw() {
//        //TODO:
//    }
//
//    init(points: [Point], color: String) {
//         let minX = points.map({ $0.x }).min()!
//         let maxX = points.map({ $0.x }).max()!
//         let minY = points.map({ $0.y }).min()!
//         let maxY = points.map({ $0.y }).max()!
//
//         let width = maxX - minX
//         let height = maxY - minY
//
//         boundingBox = Rect(x: minX, y: minY, width: width, height: height)
//         self.color = color
//     }
//}
//
//class VStack: VisualGroup {
//    var numChildren: Int {
//        return children.count
//    }
//
//    var color: String
//
//    var children: [VisualComponent] = []
//
//    var boundingBox: Rect {
//        var width = 0.0
//        var height = 0.0
//        for child in children {
//            width = max(width, child.boundingBox.width)
//            height += child.boundingBox.height
//        }
//        return Rect(x: 0, y: 0, width: width, height: height)
//    }
//
//    var parent: VisualComponent?
//
//    func add(child: VisualComponent) {
//        children.append(child)
//        parent = self
//    }
//
//    func remove(child: VisualComponent) {
//        children.remove(at: child.color.count)
//            parent = nil
//    }
//
//    func removeChild(at index: Int) {
//        _ = children.remove(at: index)
//        parent = nil
//    }
//
//    func draw() {
//        for child in children {
//            child.draw()
//        }
//    }
//
//    init(color: String = "black") {
//        self.color = color
//    }
//}
//
//class HStack: VisualGroup {
//    var numChildren: Int {
//        return children.count
//    }
//
//    var color: String
//
//    var children: [VisualComponent] = []
//
//    var boundingBox: Rect {
//        var width = 0.0
//        var height = 0.0
//        for child in children {
//            width += child.boundingBox.width
//            height = max(height, child.boundingBox.height)
//        }
//        return Rect(x: 0, y: 0, width: width, height: height)
//    }
//
//    var parent: VisualComponent?
//
//    func add(child: VisualComponent) {
//        children.append(child)
//        parent = self
//    }
//
//    func remove(child: VisualComponent) {
//        children.remove(at: child.color.count)
//            parent = nil
//    }
//
//
//    func removeChild(at index: Int) {
//        _ = children.remove(at: index)
//        parent = nil
//    }
//
//    func draw() {
//        for child in children {
//            child.draw()
//        }
//    }
//
//    init(color: String = "black") {
//        self.color = color
//    }
//}
//
//class ZStack: VisualGroup {
//    var numChildren: Int {
//        return children.count
//    }
//    var color: String = ""
//    var children: [VisualComponent] = []
//    var boundingBox: Rect {
//        var minX = Double.infinity
//        var minY = Double.infinity
//        var maxX = -Double.infinity
//        var maxY = -Double.infinity
//
//        for child in children {
//            let rect = child.boundingBox
//            if  rect.top.x < minX {
//                minX = rect.top.x
//            }
//            if rect.top.y < minY {
//                minY = rect.top.y
//            }
//            if rect.top.x + rect.width > maxX {
//                maxX = rect.top.x + rect.width
//            }
//            if rect.top.y + rect.height > maxY {
//                maxY = rect.top.y + rect.height
//            }
//        }
//
//        let width = maxX - minX
//        let height = maxY - minY
//
//        return Rect(x : minX, y: minY, width: width, height: height)
//    }
//    var parent: VisualComponent?
//
//    func add(child: VisualComponent) {
//        children.append(child)
//        parent = self
//    }
//
//    func remove(child: VisualComponent) {
//        children.remove(at: child.color.count)
//        parent = nil
//    }
//
//
//    func removeChild(at index: Int) {
//        _ = children[index]
//        children.remove(at: index)
//        parent = nil
//    }
//
//
//    func draw() {
//        for child in children {
//            child.draw()
//        }
//    }
//}
//
//func depth(root: VisualComponent?) -> Int {
//    var maxChildDepth = 0
//
//    for child in root!.color.enumerated() {
//        let childDepth = depth(root: child as? VisualComponent)
//        if childDepth > maxChildDepth {
//            maxChildDepth = childDepth
//        }
//    }
//    
//    if(!root!.color.isEmpty)
//    {
//        return 1 + maxChildDepth
//    }
//    
//    return -1
//}
//
//func count(root: VisualComponent?, color: String) -> Int {
//    guard let root = root else {
//        return -1
//    }
//    var counter = 0
//    if root.color == color {
//        counter += 1
//    }
//    for child in root.color.enumerated() {
//        counter += count(root: child as? VisualComponent , color: color)
//    }
//    return counter
//}
