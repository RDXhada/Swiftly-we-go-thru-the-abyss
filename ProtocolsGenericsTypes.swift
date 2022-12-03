

//Protocols
protocol classa {
   var marks: Int { get set }
   var result: Bool { get }
   
   func attendance() -> String
   func markssecured() -> String
}

protocol classb: classa {
   var present: Bool { get set }
   var subject: String { get set }
   var stname: String { get set }
}

class classc: classb {
   var marks = 96
   let result = true
   var present = false
   var subject = "Swift Protocols"
   var stname = "Protocols"

   func attendance() -> String {
      return "The \(stname) has secured 99% attendance"
   }
   func markssecured() -> String {
      return "\(stname) has scored \(marks)"
   }
}

let studdet = classc()
studdet.stname = "Swift"
studdet.marks = 98
studdet.markssecured()

print(studdet.marks)
print(studdet.result)
print(studdet.present)
print(studdet.subject)
print(studdet.stname)


//Mutating Method Requirements
protocol daysofaweek1 {
   mutating func print()
}

enum days: daysofaweek1 {
   case sun, mon, tue, wed, thurs, fri, sat
   mutating func print() {
      switch self {
      case .sun:
          self = days.sun
          Swift.print("Sunday")
      case .mon:
          self = days.mon
          Swift.print("Monday")
      case .tue:
          self = days.tue
          Swift.print("Tuesday")
      case .wed:
          self = days.wed
          Swift.print("Wednesday")
      case .mon:
          self = days.thurs
          Swift.print("Thursday")
      case .tue:
          self = days.fri
          Swift.print("Friday")
      case .sat:
          self = days.sat
          Swift.print("Saturday")
         default:
          Swift.print("NO Such Day")
      }
   }
}

var res = days.wed
res.print()


//Class Implementations of Protocol Initializer Requirements
protocol tcpprotocol {
   init(no1: Int)
}

class mainClas {
   var no1: Int        // local storage
   init(no1: Int) {
      self.no1 = no1  // initialization
   }
}

class subClas: mainClas, tcpprotocol {
   var no2: Int
   init(no1: Int, no2 : Int) {
      self.no2 = no2
      super.init(no1:no1)
   }
   // Requires only one parameter for convenient method
   required override convenience init(no1: Int) {
      self.init(no1:no1, no2:0)
   }
}

let resF = mainClass(no1: 20)
let printJ = subClass(no1: 30, no2: 50)

print("res is: \(resF.no1)")
print("res is: \(printJ.no1)")
print("res is: \(printJ.no2)")


protocol tcpprotocol1 {
   init(no1: Int)
}
class mainClassa {
   var no1: Int        // local storage
   init(no1: Int) {
      self.no1 = no1  // initialization
   }
}
class subClassa: mainClassa, tcpprotocol1 {
   var no2: Int
   init(no1: Int, no2 : Int) {
      self.no2 = no2
      super.init(no1:no1)
   }
   
   // Requires only one parameter for convenient method
   required override convenience init(no1: Int) {
      self.init(no1:no1, no2:0)
   }
}

let resP = mainClassa(no1: 20)
let printP = subClassa(no1: 30, no2: 50)

print("res is: \(resP.no1)")
print("res is: \(printP.no1)")
print("res is: \(printP.no2)")


//Protocol Composition
protocol stnameS {
   var name: String { get }
}
protocol stage {
   var age: Int { get }
}
struct Person: stnameS, stage {
   var name: String
   var age: Int
}
func print(celebrator: stnameS & stage) {
   print("\(celebrator.name) is \(celebrator.age) years old")
}
let studname = Person(name: "Priya", age: 21)
print(studname)

let stud = Person(name: "Rehan", age: 29)
print(stud)

let student = Person(name: "Roshan", age: 19)
print(student)

import Foundation
//Checking for Protocol Conformance
@objc protocol rectangal {
   var area: Double { get }
}
class Circal: rectangal {
   let pi = 3.1415927
   var radius: Double
   var area: Double { return pi * radius * radius }
   init(radius: Double) { self.radius = radius }
}
class resultal: NSObject, rectangal {
   var area: Double
   init(area: Double) { self.area = area }
}
class sides {
   var rectsides: Int
   init(rectsides: Int) { self.rectsides = rectsides }
}
let objects: [AnyObject] = [Circal(radius: 2.0),resultal(area:198),sides(rectsides: 4)]

for object in objects {
   if let objectWithArea = object as? rectangal {
      print("Area is \(objectWithArea.area)")
   } else {
      print("Rectangle area is not defined")
   }
}


//Generics
func exchange<T>(a: inout T, b: inout T) {
   let temp = a
   a = b
   b = temp
}
var numb1 = 100
var numb2 = 200

print("Before Swapping Int values are: \(numb1) and \(numb2)")
exchange(a: &numb1, b: &numb2)
print("After Swapping Int values are: \(numb1) and \(numb2)")

var str1 = "Generics"
var str2 = "Functions"

print("Before Swapping String values are: \(str1) and \(str2)")
exchange(a: &str1, b: &str2)
print("After Swapping String values are: \(str1) and \(str2)")

struct TOS<T> {
   var items = [T]()
   mutating func push(item: T) {
      items.append(item)
   }
   mutating func pop() -> T {
      return items.removeLast()
   }
}

var tosss = TOS<String>()
tosss.push(item: "Swift")
print(tosss.items)

tosss.push(item: "Generics")
print(tosss.items)

tosss.push(item: "Type Parameters")
print(tosss.items)

tosss.push(item: "Naming Type Parameters")
print(tosss.items)

let deletetos = tosss.pop()


//Extending a Generic Type
extension TOS {
   var first: T? {
      return items.isEmpty ? nil : items[items.count - 1]
   }
}
if let first = tosss.first {
   print("The top item on the stack is \(first).")
}


//Type Constraints
func exchangeA<T>(a: inout T, b: inout T) {
   let temp = a
   a = b
   b = temp
}
var numbA1 = 100
var numbA2 = 200

print("Before Swapping Int values are: \(numbA1) and \(numbA2)")
exchangeA(a: &numbA1, b: &numbA2)
print("After Swapping Int values are: \(numbA1) and \(numbA2)")

var strA1 = "Generics"
var strA2 = "Functions"

print("Before Swapping String values are: \(str1) and \(str2)")
exchangeA(a: &strA1, b: &strA2)
print("After Swapping String values are: \(strA1) and \(strA2)")


//Associated Types
protocol Container {
   associatedtype ItemType
   mutating func append(item: ItemType)
   var count: Int { get }
   subscript(i: Int) -> ItemType { get }
}
struct TOSS<T>: Container {
   // original Stack<T> implementation
   var items = [T]()
   mutating func push(item: T) {
      items.append(item)
   }
   mutating func pop() -> T {
      return items.removeLast()
   }
   
   // conformance to the Container protocol
   mutating func append(item: T) {
      self.push(item: item)
   }
   var count: Int {
      return items.count
   }
   subscript(i: Int) -> T {
      return items[i]
   }
}
var toss = TOSS<String>()
toss.push(item: "Swift")
print(toss.items)

toss.push(item: "Generics")
print(toss.items)

toss.push(item: "Type Parameters")
print(toss.items)

toss.push(item: "Naming Type Parameters")
print(toss.items)


//Where Clauses
protocol Container1 {
   associatedtype ItemType
   mutating func append(item: ItemType)
   var count: Int { get }
   subscript(i: Int) -> ItemType { get }
}
struct Stack<T>: Container1 {
   // original Stack<T> implementation
   var items = [T]()
   mutating func push(item: T) {
      items.append(item)
   }
   mutating func pop() -> T {
      return items.removeLast()
   }

   // conformance to the Container protocol
   mutating func append(item: T) {
      self.push(item: item)
   }
   var count: Int {
      return items.count
   }
   subscript(i: Int) -> T {
      return items[i]
   }
}
func allItemsMatch<
    C1: Container1, C2: Container1>
(someContainer: C1, anotherContainer: C2) -> Bool
where C1.ItemType == C2.ItemType, C1.ItemType: Equatable {
   // check that both containers contain the same number of items
   if someContainer.count != anotherContainer.count {
      return false
   }
   
   // check each pair of items to see if they are equivalent
   for i in 0..<someContainer.count {
      if someContainer[i] != anotherContainer[i] {
         return false
      }
   }
   // all items match, so return true
   return true
}
var tos = Stack<String>()

tos.push(item: "Swift")
print(tos.items)

tos.push(item: "Generics")
print(tos.items)

tos.push(item: "Where Clause")
print(tos.items)

var eos = ["Swift", "Generics", "Where Clause"]
print(eos)


//Getters and Setters
class Samplepgm1 {
   var counter: Int = 0{
      willSet(newTotal) {
         print("Total Counter is: \(newTotal)")
      }
      didSet {
         if counter > oldValue {
            print("Newly Added Counter \(counter - oldValue)")
         }
      }
   }
}

let NewCounterr = Samplepgm1()
NewCounterr.counter = 100
NewCounterr.counter = 800


//Swift Encoding and Decoding
struct Language: Codable {
   var name: String
   var version: Int
}
let swift = Language(name: "Swift", version: 4)
let java = Language(name: "java", version: 8)
let R = Language(name: "R", version: 3)


let encodedd = JSONEncoder()
if (try? encodedd.encode(java)) != nil {
   //Perform some operations on this value.
}

//let decoder = JSONDecoder()
//if let decoded = (try? decoder.decode(Language.self, from: encodedd)) {
//   //Perform some operations on this value.
//}
