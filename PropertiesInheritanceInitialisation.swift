

//PROPERTIES
//Stored Properties
struct Number {
    var digits: Int
    let pi = 3.1415
}

var n = Number(digits: 12345)
n.digits = 67

print("\(n.digits)")
print("\(n.pi)")


//Lazy Stored Property
class Sample1 {
    lazy var no = number()    // `var` declaration is required.
}

class number {
    var name = "Swift 4"
}

var firstsample = Sample1()
print(firstsample.no.name)

//Instance Variables
//Computed Properties
class sample1 {
    var no1 = 0.0, no2 = 0.0
    var length = 300.0, breadth = 150.0
    
    var middle: (Double, Double) {
        get {
            return (length / 2, breadth / 2)
        }
        
        set(axis){
            no1 = axis.0 - (length / 2)
            no2 = axis.1 - (breadth / 2)
        }
    }
}

var result1 = sample1()
print(result1.middle)
result1.middle = (0.0, 10.0)

print(result1.no1)
print(result1.no2)


//Computed Properties as Read-Only Properties
class film {
    var head = ""
    var duration = 0.0
    var metaInfo: [String:String] {
        return [
            "head": self.head,
            "duration":"\(self.duration)"
        ]
    }
}

var movie = film()
movie.head = "Swift 4 Properties"
movie.duration = 3.09

print(movie.metaInfo["head"]!)
print(movie.metaInfo["duration"]!)



//Computed Properties as Property Observers
class Samplepgm {
    var counter: Int = 0 {
        willSet(newTotal){
            print("Total Counter is: \(newTotal)")
        }
        
        didSet {
            if counter > oldValue {
                print("Newly Added Counter \(counter - oldValue)")
            }
        }
    }
}

let NewCounter = Samplepgm()
NewCounter.counter = 100
NewCounter.counter = 800

//Type Properties - syntax

//Querying and Setting Properties
struct StudMarks {
    static let markCount = 97
    static var totalCount = 0
    
    var InternalMarks: Int = 0 {
        didSet {
            if InternalMarks > StudMarks.markCount {
                InternalMarks = StudMarks.markCount
            }
            if InternalMarks > StudMarks.totalCount {
                StudMarks.totalCount = InternalMarks
            }
        }
    }
}

var stud1Mark1 = StudMarks()
var stud1Mark2 = StudMarks()

stud1Mark1.InternalMarks = 98
print(stud1Mark1.InternalMarks)

stud1Mark2.InternalMarks = 87
print(stud1Mark2.InternalMarks)


//Methods
class Calculations
{
    let a: Int
    let b: Int
    let res: Int
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
        res = a + b
    }
    
    func total(c : Int) -> Int
    {
        return res - c
    }
    func result()
    {
        print("Result is: \(total(c: 20))")
        print("Result is: \(total(c: 50))")
    }
}
let pri = Calculations(a: 600, b: 300)
pri.result()

//Class Calculations defines two instance methods −
//
//init() is defined to add two numbers a and b and store it in result 'res'
//tot() is used to subtract the 'res' from passing 'c' value

//Local and External Parameter Names
class division {
   var count: Int = 0
   func incrementBy(no1: Int, no2: Int) {
      count = no1 / no2
      print(count)
   }
}

let counter = division()
counter.incrementBy(no1: 1800, no2: 3)
counter.incrementBy(no1: 1600, no2: 5)
counter.incrementBy(no1: 11000, no2: 3)


//External Parameter Name with # and _ Symbol
class multiplication {
   var count: Int = 0
   func incrementBy(no1: Int, no2: Int) {
      count = no1 * no2
      print(count)
   }
}

let counter1 = multiplication()

counter1.incrementBy(no1: 800, no2: 3)
counter1.incrementBy(no1: 100, no2: 5)
counter1.incrementBy(no1: 15000, no2: 3)

//Self property in Methods
class calc {
   let a: Int
   let b: Int
   let res: Int

   init(a: Int, b: Int) {
      self.a = a
      self.b = b
      res = a + b
      print("Inside Self Block: \(res)")
   }
   
   func tot(c: Int) -> Int {
      return res - c
   }
   
   func result() {
      print("Result is: \(tot(c: 20))")
      print("Result is: \(tot(c: 50))")
   }
}

let pr = calc(a: 600, b: 300)
let sum6 = calc(a: 1200, b: 300)

pr.result()
sum6.result()

//Modifying Value Types from Instance Methods
struct area {
   var length = 1
   var breadth = 1
   
   func area() -> Int {
      return length * breadth
   }
   mutating func scaleBy(res: Int) {
      length *= res
      breadth *= res
      print(length)
      print(breadth)
   }
}

var val5 = area(length: 3, breadth: 5)
val5.scaleBy(res: 3)
val5.scaleBy(res: 30)
val5.scaleBy(res: 300)


//Self Property for Mutating Method
struct area1 {
   var length = 1
   var breadth = 1
   func area1() -> Int {
      return length * breadth
   }
   mutating func scaleBy(res: Int) {
      self.length *= res
      self.breadth *= res
      print(length)
      print(breadth)
   }
}

var val = area1(length: 3, breadth: 5)
val.scaleBy(res: 13)


//Type Methods
class Math {
   class func abs(number: Int) -> Int {
      if number < 0 {
         return (-number)
      } else {
         return number
      }
   }
}

struct absno {
   static func abs(number: Int) -> Int {
      if number < 0 {
         return (-number)
      } else {
         return number
      }
   }
}

let no1 = Math.abs(number: -35)
let num = absno.abs(number: -5)

print(no1)
print(num)

//Subscript Declaration Syntax and its Usage
struct subexample {
   let decrementer: Int
   subscript(index: Int) -> Int {
      return decrementer / index
   }
}
let div = subexample(decrementer: 100)

print("The number is divisible by \(div[9]) times")
print("The number is divisible by \(div[2]) times")
print("The number is divisible by \(div[3]) times")
print("The number is divisible by \(div[5]) times")
print("The number is divisible by \(div[7]) times")

class daysofaweek {
   private var days = ["Sunday", "Monday", "Tuesday", "Wednesday",
      "Thursday", "Friday", "saturday"]
   subscript(index: Int) -> String {
      get {
         return days[index]
      }
      set(newValue) {
         self.days[index] = newValue
      }
   }
}
var p = daysofaweek()

print(p[0])
print(p[1])
print(p[2])
print(p[3])

//Inheritance
class studentDetails
{
    var stname: String!
    var smark1: Int!
    var smark2: Int!
    var smark3: Int!
    
    init(stname: String, smark1: Int, smark2: Int, smark3: Int) {
        self.stname = stname
        self.smark1 = smark1
        self.smark2 = smark2
        self.smark3 = smark3
    }
    
}

let stname = "Dzhem"
let smark1 = 5
let smark2 = 6
let smark3 = 6
print(stname)
print(smark1)
print(smark2)
print(smark3)

//SUBclass
class Car
{
    var brand : String
    var model : String
    var horsePower : Int
    init(brand: String, model: String, horsePower: Int) {
        self.brand = brand
        self.model = model
        self.horsePower = horsePower
    }
    func printBrand()
    {
        print("Brand: \(brand), Model:\(model), HP:\(horsePower)")
    }
}

class DisplayCar : Car {
    init() {
        super.init(brand: "Audi", model: "A7", horsePower: 540)
    }
}

let audiA7 = DisplayCar()
audiA7.printBrand()

//Overriding
//Accessing the super class instance, type methods, instance, type properties and subscripts subclass provides the concept of overriding. 'override' keyword is used to override the methods declared in the superclass.

//Methods Overriding
class cricket
{
    func printC()
    {
        print("Welcome to SUPER classes in swift!")
    }
}

class tennis : cricket
{
    override func printC()
    {
        print("Welcome to SUB classes in swift!")
    }
}

let cricket5 = cricket()
cricket5.printC()
let tennis5 = tennis()
tennis5.printC()


//You can override an inherited instance or class property to provide your own custom getter and setter for that property, or to add property observers to enable the overriding property to observe when the underlying property value changes.
//
//Overriding Property Getters and Setters
class Circle {
   var radius = 12.5
   var area: String {
      return "of rectangle for \(radius) "
   }
}

class Rectangle: Circle {
   var print = 7
   override var area: String {
      return super.area + " is now overridden as \(print)"
   }
}

let rect = Rectangle()
rect.radius = 25.0
rect.print = 3
print("Radius \(rect.area)")


//Overriding Property Observers
class Circle1 {
   var radius = 12.5
   var area: String {
     return "of rectangle for \(radius) "
   }
}

class Rectangle1: Circle1 {
   var print = 7
   override var area: String {
      return super.area + " is now overridden as \(print)"
   }
}

let rect1 = Rectangle()
rect1.radius = 25.0
rect1.print = 3
print("Radius \(rect1.area)")

class Square: Rectangle1 {
   override var radius: Double {
      didSet {
         print = Int(radius/5.0)+1
      }
   }
}

let sq = Square()
sq.radius = 100.0
print("Radius \(sq.area)")


//Final Property to prevent Overriding
//Swift 4 introduces 'final' property to prevent overriding. Once 'final' property is declared the subscripts won't allow the super class methods, properties and its subscripts to be overridden. There is no provision to have 'final' property in 'super class'. When 'final' property is declared the user is restricted to create further sub classes.


//Initialisation
struct rectangle2 {
   var length: Double
   var breadth: Double
   init() {
      length = 6
      breadth = 12
   }
}

var areaR = rectangle2()
print("area of rectangle is \(areaR.length*areaR.breadth)")


//Setting Property Values by Default
struct rectangle {
   var length = 6
   var breadth = 12
}

var areaA = rectangle()
print("area of rectangle is \(areaA.length*areaA.breadth)")


//Parameters Initialization
struct Rect {
   var length: Double
   var breadth: Double
   var area: Double
   
   init(fromLength length: Double, fromBreadth breadth: Double) {
      self.length = length
      self.breadth = breadth
      area = length * breadth
   }
   init(fromLeng leng: Double, fromBread bread: Double) {
      self.length = leng
      self.breadth = bread
      area = leng * bread
   }
}

let ar = Rect(fromLength: 6, fromBreadth: 12)
print("area is: \(ar.area)")

let are = Rect(fromLeng: 36, fromBread: 12)
print("area is: \(are.area)")

struct Days {
   let sunday, monday, tuesday: Int
   init(sunday: Int, monday: Int, tuesday: Int) {
      self.sunday = sunday
      self.monday = monday
      self.tuesday = tuesday
   }
   init(daysofaweek: Int) {
      sunday = daysofaweek
      monday = daysofaweek
      tuesday = daysofaweek
   }
}

let week = Days(sunday: 1, monday: 2, tuesday: 3)
print("Days of a Week is: \(week.sunday)")
print("Days of a Week is: \(week.monday)")
print("Days of a Week is: \(week.tuesday)")

let weekdays = Days(daysofaweek: 4)
print("Days of a Week is: \(weekdays.sunday)")
print("Days of a Week is: \(weekdays.monday)")
print("Days of a Week is: \(weekdays.tuesday)")

//Parameters without External Names
//When an external name is not needed for an initialize underscore '_' is used to override the default behavior.

struct RectangleA {
   var length: Double
   
   init(frombreadth breadth: Double) {
      length = breadth * 10
   }
   init(frombre bre: Double) {
      length = bre * 30
   }
   init(_ area: Double) {
      length = area
   }
}

let rectarea = RectangleA(180.0)
print("area is: \(rectarea.length)")

let rearea = RectangleA(370.0)
print("area is: \(rearea.length)")

let recarea = RectangleA(110.0)
print("area is: \(recarea.length)")

//Optional Property Types
struct RectangleB {
   var length: Double?
   
   init(frombreadth breadth: Double) {
      length = breadth * 10
   }
   init(frombre bre: Double) {
      length = bre * 30
   }
   init(_ area: Double) {
      length = area
   }
}

let rectareaB = RectangleB(180.0)
print("area is: \(rectareaB.length)")

let reareaB = RectangleB(370.0)
print("area is: \(reareaB.length)")

let recareaB = RectangleB(110.0)
print("area is: \(recareaB.length)")

//Program for Designated Initializers
class mainClass {
   var no1 : Int // local storage
   init(no1 : Int) {
      self.no1 = no1 // initialization
   }
}

class subClass : mainClass {
   var no2 : Int // new subclass storage
   init(no1 : Int, no2 : Int) {
      self.no2 = no2 // initialization
      super.init(no1:no1) // redirect to superclass
   }
}

let res2 = mainClass(no1: 10)
let print3 = subClass(no1: 10, no2: 20)

print("res is: \(res2.no1)")
print("res is: \(print3.no1)")
print("res is: \(print3.no2)")

//Program for Convenience Initializers
class mainClass2 {
   var no1 : Int // local storage
   init(no1 : Int) {
      self.no1 = no1 // initialization
   }
}

class subClass2 : mainClass2 {
   var no2 : Int
   init(no1 : Int, no2 : Int) {
      self.no2 = no2
      super.init(no1:no1)
   }
   // Requires only one parameter for convenient method
   override convenience init(no1: Int) {
      self.init(no1:no1, no2:0)
   }
}

let res9 = mainClass2(no1: 20)
let print9 = subClass2(no1: 30, no2: 50)

print("res is: \(res9.no1)")
print("res is: \(print9.no1)")
print("res is: \(print9.no2)")


//Initializer Inheritance and Overriding
class Planet {
   var name: String
   init(name: String) {
      self.name = name
   }
   convenience init() {
      self.init(name: "[No Planets]")
   }
}

let plName = Planet(name: "Mercury")
print("Planet name is: \(plName.name)")

let noplName = Planet()
print("No Planets like that: \(noplName.name)")

class planets: Planet {
   var count: Int
   init(name: String, count: Int) {
      self.count = count
      super.init(name: name)
   }
   override convenience init(name: String) {
      self.init(name: name, count: 1)
   }
}


//Failable Initializer
struct studrecord {
   let stname: String
   init?(stname: String) {
      if stname.isEmpty {return nil }
      self.stname = stname
   }
}
let stmark = studrecord(stname: "Swing")

if stmark != nil {
   print("Student name is specified")
}
let blankname = studrecord(stname: "")

if blankname == nil {
   print("Student name is left blank")
}


//Failable Initializers for Enumerations
enum functions {
   case a, b, c, d
   init?(funct: String) {
      switch funct {
      case "one":
         self = .a
      case "two":
         self = .b
      case "three":
         self = .c
      case "four":
         self = .d
      default:
         return nil
      }
   }
}
let resultD = functions(funct: "two")

if resultD != nil {
   print("With In Block Two")
}
let badresult = functions(funct: "five")

if badresult == nil {
   print("Block Does Not Exist")
}


//Failable Initializers for Classes
class studrecorD {
   let studname: String!
   init?(studname: String) {
      self.studname = studname
      if studname.isEmpty { return nil }
   }
}

if let stname = studrecorD(studname: "Failable Initializers") {
    print("Module is \(String(describing: stname.studname))")
}


//Overriding a Failable Initializer
class Planetz {
   var name: String
   
   init(name: String) {
      self.name = name
   }
   convenience init() {
      self.init(name: "[No Planets]")
   }
}
let plName1 = Planetz(name: "Mercury")
print("Planet name is: \(plName1.name)")

let noplName1 = Planetz()
print("No Planets like that: \(noplName1.name)")
   
class planetz: Planetz {
   var count: Int
   
   init(name: String, count: Int) {
      self.count = count
      super.init(name: name)
   }
   override convenience init(name: String) {
      self.init(name: name, count: 1)
   }
}


//The init! Failable Initializer
struct studrecord3 {
let stname: String

   init!(stname: String) {
      if stname.isEmpty {return nil }
      self.stname = stname
   }
}
let stmark2 = studrecord3(stname: "Swing")

if stmark2 != nil {
   print("Student name is specified")
}

let blankname2 = studrecord3(stname: "")

if blankname2 == nil {
   print("Student name is left blank")
}

//Required Initializers
class classA {
   required init() {
      var a = 10
      print(a)
   }
}

class classB: classA {
   required init() {
      var b = 30
      print(b)
   }
}

let resAA = classA()
let printBB = classB()


//DEINITIALISATION
var cOuNtEr = 0; // for reference counting
class baseclass {
   init() {
      cOuNtEr+=1;
   }
   deinit {
      cOuNtEr-=1;
   }
}
var printt: baseclass? = baseclass()

print(cOuNtEr)
printt = nil
print(cOuNtEr)

//When print = nil statement is omitted the values of the counter retains the same since it is not deinitialized.

//Optional chaining
class ElectionPoll {
   var candidate: Pollbooth?
}

class Pollbooth {
   var name = "MP"
}
let cand = ElectionPoll()

if let candname = cand.candidate?.name {
   print("Candidate name is \(candname)")
} else {
   print("Candidate name cannot be retreived")
}

//Calling Methods Through Optional Chaining
class rectangleL {
   var print: circle2?
}

class circle2 {
   var area = [radius]()
   var cprint: Int {
      return area.count
   }
   subscript(i: Int) -> radius {
      get {
         return area[i]
      }
      set {
         area[i] = newValue
      }
   }

   func circleprint() {
      print("Area of Circle is: \(cprint)")
   }
   var rectarea: circumference?
}

class radius {
   let radiusname: String
   init(radiusname: String) { self.radiusname = radiusname }
}

class circumference {
   var circumName: String?
   var circumNumber: String?
   var circumarea: String?
   
   func buildingIdentifier() -> String? {
      if circumName != nil {
         return circumName
      } else if circumNumber != nil {
         return circumNumber
      } else {
         return nil
      }
   }
}

let circname = rectangleL()

if circname.print?.circleprint() != nil {
   print("Area of circle is specified)")
} else {
   print("Area of circle is not specified")
}

//Type casting - Defining a Class Hierarchy
class Subjects {
   var physics: String
   init(physics: String) {
      self.physics = physics
   }
}

class Chemistry: Subjects {
   var equations: String
   init(physics: String, equations: String) {
      self.equations = equations
      super.init(physics: physics)
   }
}

class Maths: Subjects {
   var formulae: String
   init(physics: String, formulae: String) {
      self.formulae = formulae
      super.init(physics: physics)
   }
}

let sa = [ Chemistry(physics: "solid physics", equations: "Hertz"),
   Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz")]

let samplechem = Chemistry(physics: "solid physics", equations: "Hertz")
print("Instance physics is: \(samplechem.physics)")
print("Instance equation is: \(samplechem.equations)")

let samplemaths = Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz")
print("Instance physics is: \(samplemaths.physics)")
print("Instance formulae is: \(samplemaths.formulae)")


//Downcasting
//Downcasting the subclass type can be done with two operators (as? and as!).'as?' returns an optional value when the value returns nil. It is used to check successful downcast.
//
//'as!' returns force unwrapping as discussed in the optional chaining when the downcasting returns nil value. It is used to trigger runtime error in case of downcast failure


//Typecasting: Any and Any Object
//The keyword 'Any' is used to represent an instance which belongs to any type including function types.


//AnyObject
//To represent the instance of any class type, 'AnyObject' keyword is used.

//Mutating Instance Methods
extension Double {
   mutating func square() {
      let pi = 3.1415
      self = pi * self * self
   }
}

var Trial1 = 3.3
Trial1.square()
print("Area of circle is: \(Trial1)")

var Trial2 = 5.8
Trial2.square()
print("Area of circle is: \(Trial2)")

var Trial3 = 120.3
Trial3.square()
print("Area of circle is: \(Trial3)")



//Nested types
extension Int {
   enum calc {
      case add
      case sub
      case mult
      case div
      case anything
   }
   var print: calc {
      switch self {
         case 0:
            return .add
         case 1:
            return .sub
         case 2:
            return .mult
         case 3:
            return .div
         default:
            return .anything
      }
   }
}

func result(numb: [Int]) {
   for i in numb {
      switch i.print {
         case .add:
            print(" 10 ")
         case .sub:
            print(" 20 ")
         case .mult:
            print(" 30 ")
         case .div:
            print(" 40 ")
         default:
            print(" 50 ")
      }
   }
}
result(numb: [0, 1, 2, 3, 4, 7])

