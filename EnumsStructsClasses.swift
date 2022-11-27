//ENUMERATIONS
enum names {
    case Swift
    case Closures
}

var lang = names.Closures
lang = .Closures

switch lang {
case.Swift:
    print("Welcome to Swift")
case.Closures:
    print("Welcome to Closures")
default:
    print("Introduction")
}

enum Climate
{
    case India
    case America
    case Africa
    case Australia
}

var season = Climate.America
season = .America
switch season
{
case .India:
    print("Hot climate!")
case.America:
    print("Cold climate!")
case.Africa:
    print("Very hot!")
case.Australia:
    print("Aussie")
}

//Enums with associated values
enum Barcode
{
    case upc(Int, Int, Int, Int)
    case QRcode(String)
}

var UPC = Barcode.upc(7, 23445, 323, 8)
var QR = Barcode.QRcode("AHDHJSHG323HC")

switch QR{
case .upc(let numSys, let manufacturer, let product, let check):
    print("UPC: \(numSys), \(manufacturer), \(product), \(check)")
case .QRcode(let code):
    print("QR code: \(code)")
}

//Raw values
enum ASCIIControlCharacter : Character
{
    case tab = "\t"
    case newLine = "\n"
    case carriageCeturn = "\r"
}
//Raw values can be strings, characters, or any of the integer or floating-point number types. Each raw value must be unique within its enumeration declaration.

enum Compass : String
{
    case North,
    South,
    East,
    West
}

//Implicitly Assigned Raw Values
enum Planets : Int
{
    case Mercury = 1,
    Venus,
    Earth,
    Mars,
    Jupiter,
    Saturn,
    Uranus,
    Neptune,
    END
}

let earthsPath = Planets.Earth.rawValue
print(earthsPath)

let sunsetDirection = Compass.West // .rawValue
print(sunsetDirection)

//Initializing from a Raw Value
let possiblePlanet = Planets(rawValue: 6) //returns nil if its not between scope of nums
print(possiblePlanet as Any)

//STRUCTURES
struct studentMarks
{
    var mark1 = 100
    var mark2 = 200
    var mark3 = 300
}
let marks = studentMarks()
print("Mark 1 is \(marks.mark1)")
print("Mark 2 is \(marks.mark2)")
print("Mark 3 is \(marks.mark3)")


struct Marks
{
    var mark : Int
    init(mark: Int) {
        self.mark = mark
    }
}

var aStruct = Marks(mark: 98)
var bStruct = aStruct
bStruct.mark = 97
print(aStruct)
print(bStruct)

struct markStruct
{
    var mark1 : Int
    var mark2 : Int
    var mark3 : Int
    
    init(mark1: Int, mark2: Int, mark3: Int)
    {
        self.mark1 = mark1
        self.mark2 = mark2
        self.mark3 = mark3
    }
}

var markss = markStruct(mark1: 95, mark2: 32, mark3: 70)
print(markss.mark1)
print(markss.mark2)
print(markss.mark3)

//CLASSES
class marksClass
{
    var mark : Int
    init(mark: Int) {
        self.mark = mark
    }
}

class studentMarkss
{
    var mark = 300
}
let marks1 = studentMarkss()
print("Mark is \(marks1.mark)")

class SampleClass: Equatable {
   let myProperty: String
   init(s: String) {
      myProperty = s
   }
}

func ==(lhs: SampleClass, rhs: SampleClass) -> Bool {
   return lhs.myProperty == rhs.myProperty
}

let spClass1 = SampleClass(s: "Hello")
let spClass2 = SampleClass(s: "Hello")

spClass1 === spClass2 // false
print("\(spClass1)")

spClass1 !== spClass2 // true
print("\(spClass2)")
