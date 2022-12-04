import Foundation
//---------------------------------------------------
print("*** Lecture 1 ***")

var Temperature = -28
if Temperature <= 10
{
    print("Cold weather!")
}


print("\nIfs: ")
var temperature = 12
if temperature <= 0 {
    //клон 1
    print("Много е студено. Облечете се топло.")
} else if temperature <= 10 {
    //клон 2
    print("Не е много студено, но си вземи шапка.")
} else {
    //клон 3
    print("Не е студено. Нямам нужда от шапка.")
}

//---------------------------------------------------
print("\nTernary operators: ")
var temperatureT = 12
let status = temperatureT < 0 ? "Много е студено. Облечете се топло." : "Не е много студено, но си вземи шапка."
print(status)

var x:Int? = 5
let y = x ?? 15

//---------------------------------------------------
print("\nSwitch: ")
let someNumber: Int = 3
switch someNumber {
case 1,  3:
    print("Едно или три")
case 4...10:
    print("Между 3 и 10")
default:
    print("Някакво друго число")
}


let count = 34
let things = "ябълки"
var expression: String
switch count {
case 0:
    expression = "николко"
case 1..<10:
    expression = "няколко"
case 10..<100:
    expression = "десетки"
case 100..<1000:
    expression = "стотици"
default:
    expression = "много"
}
print("\(count) са \(expression) \(things)")


//---------------------------------------------------
print("\nTuple switch:")
let point = (0, 1)
switch point {
case (let x, 0):
    print("точка (\(x), 0) се намира на абсциса х")
case (0, let y):
    print("точка (0, \(y)) се намира на ордината у")
case let (x, y):
    print("точка (\(x), \(y)) е някъде другаде")
}

//---------------------------------------------------
print("\nFors:")
let names = ["Боян", "Драго", "Емил", "Петко", "Спас"]
for name in names {
    print("Здравей, \(name)!")
}

//---------------------------------------------------
print("\nWhile: ")
let finalSquare = 25
   var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
   board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
    var diceRoll = 0
    while square < finalSquare {
        // хвърляне на зар
        diceRoll += 1
        if diceRoll == 7 { diceRoll = 1 }
        // преместване спрямо стойността на зара
        square += diceRoll
        if square < board.count {
            // ако пионката на играча все още е върху дъската, преместваме     пионката нагоре или надолу за змия или стълба
            square += board[square]
        }
    }
    print("Край на играта!")

//---------------------------------------------------
print("\nRepeat While: ")
let finalSquare1 = 25
var board1 = [Int](repeating: 0, count: finalSquare1 + 1)
board1[03] = +08; board1[06] = +11; board1[09] = +09; board1[10] = +02
board1[14] = -10; board1[19] = -11; board1[22] = -02; board1[24] = -08
var square1 = 0
var diceRoll1 = 0

repeat {
      // преместване спрямо стойността на зара
      square += board1[square1]
      // хвърляне на зара
      diceRoll1 += 1
      if diceRoll1 == 7 { diceRoll1 = 1 }
      // преместване спрямо стойността на зара
      square1 += diceRoll1
  } while square1 < finalSquare1
  print("Край на играта!")
//---------------------------------------------------
//enums
print("\nEnums:")
enum Color {
    case pink
    case green
    case black
    case blue
    case white
    case noColor
}

//---------------------------------------------------
print("\nProtocols: ")
protocol Sellable {
    var pricePerUnit: Double { get }
    var isAvailable: Bool { set get }
}

//---------------------------------------------------
print("\nStructures")
struct Merchandise {
    var name: String
       var pricePerUnit: Double
    var isAvailable: Bool
   
   //конструктор
   init(name: String, pricePerUnit: Double, isAvailable:Bool) {
        self.name = name
              self.pricePerUnit = pricePerUnit
           self.isAvailable = isAvailable
    }
}

//---------------------------------------------------
print("\nClasses")
class Media {
    var name: String = ""
    var sizeInBytes: Double = 0.0
}

let movie = Media()
movie.name = "X-Men"
print("Media name: \(movie.name)")
let ref = movie
print("Media ref name: \(ref.name)")
movie.name = "X-Men 2"
print("Media ref name: \(ref.name)")

//---------------------------------------------------
print("\nClosures: ")
//Нека да напишем първата функция, която обединява няколко действия.
func severalActions() {
    print("Action 1")
    print("Action 2")
    print("Action 3")
}


severalActions()

func functionName(labelName variableName : String) -> String
{
    let returnedName = variableName + " was turned"
    return returnedName
}
print(functionName(labelName: "Nothing"))

//---------------------------------------------------
func printAllNames(names: [String], printFunc: (String) -> Void) {
    for name in names {
        printFunc(name)
    }
}

func createVeryFancyPrintFunction() -> (String)-> Void {
    
    func fancyPrint(name: String)   {
        print("@****************************@")
        print("@$$$$$$$$$$ \(name) $$$$$$$$$@")
        print("@****************************@")
    }
    
    
    return fancyPrint
}

printAllNames(names: ["Иван", "Гошо"], printFunc: createVeryFancyPrintFunction())


let names1 = ["aaa", "ccc", "bbb"]
//сортиране
print(names1.sorted(by: { $0 > $1 }))
print(names1.sorted() { $0 > $1 })
//сортираме, като подаваме функция от тип (String, String) -> Bool ( т.е. оператор за сравнение)
print(names1.sorted(by: >))
