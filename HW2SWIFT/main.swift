//import Foundation
//
//protocol Fillable {
//    var color: String { get set }
//}
//
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
//    func add(child: VisualComponent)
//    //премахване на дете
//    func remove(child: VisualComponent)
//    //премахване на дете от съответния индекс - 0 базиран
//    func removeChild(at: Int)
//}
//
//struct Point {
//    var x: Double
//    var y: Double
//}
//
//struct Rect {
//    //top-left
//    var top:Point
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
//        let minX = min(a.x, b.x, c.x)
//        let maxX = max(a.x, b.x, c.x)
//        let minY = min(a.y, b.y, c.y)
//        let maxY = max(a.y, b.y, c.y)
//
//        let width = maxX - minX
//        let height = maxY - minY
//
//        boundingBox = Rect(x: minX, y: minY, width: width, height: height)
//        self.color = color
//    }
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
//    init(x: Double, y: Double, r: Double, color: String) {
//        let topLeft = Point(x: x - r, y: y - r)
//        let width = r * 2
//        let height = r * 2
//        boundingBox = Rect(top: topLeft, width: width, height: height)
//        self.color = color
//    }
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
//        let minX = points.map({ $0.x }).min()!
//        let maxX = points.map({ $0.x }).max()!
//        let minY = points.map({ $0.y }).min()!
//        let maxY = points.map({ $0.y }).max()!
//
//        let width = maxX - minX
//        let height = maxY - minY
//
//        boundingBox = Rect(x: minX, y: minY, width: width, height: height)
//        self.color = color
//    }
//}
//
//class HStack: VisualGroup {
//    var numChildren: Int = 0
//    var color: String
//
//    var children: [VisualComponent] = []
//
//    var boundingBox: Rect {
//        if children.isEmpty {
//            return Rect(x: 0, y: 0, width: 0, height: 0)
//        }
//        var left = children[0].boundingBox.top.x
//        var right = children[0].boundingBox.top.x + children[0].boundingBox.width
//        var top = children[0].boundingBox.top.y
//        var bottom = children[0].boundingBox.top.y + children[0].boundingBox.height
//
//        for child in children.dropFirst() {
//            left = min(left, child.boundingBox.top.x)
//            right = max(right, child.boundingBox.top.x + child.boundingBox.width)
//            top = min(top, child.boundingBox.top.y)
//            bottom = max(bottom, child.boundingBox.top.y + child.boundingBox.height)
//        }
//
//        return Rect(x: left, y: top, width: right - left, height: bottom - top)
//    }
//
//    var parent: VisualComponent?
//
//    init() {
//        color = "white"
//    }
//
//    func add(child: VisualComponent) {
//        children.append(child)
//        child.parent = self
//        numChildren += 1
//    }
//
//    func remove(child: VisualComponent) {
//        if let index = children.firstIndex(where: { $0 === child }) {
//            children.remove(at: index)
//            child.parent = nil
//            numChildren -= 1
//        }
//    }
//
//    func removeChild(at index: Int) {
//        let child = children[index]
//        children.remove(at: index)
//        child.parent = nil
//        numChildren -= 1
//    }
//
//    func draw() {
//        //TODO:
//    }
//}
