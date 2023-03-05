import Foundation

//variables
var greeting1 : String = "Hello, world!"
//constants
let greeting2 : String = "Hello, world!"
print(greeting1)
print(greeting2)
// comments // /* */

//Types : Bool, Int, Double, Float, String
var five : Int = 5;
//optionals
let optionalNum : Int? = 3
print(optionalNum)

let numberEleven : Int? = 11;
if let num = numberEleven
{
    print(num);
}

//Array
let names = ["John", "Ivan", "Kevin", "Dimitar"]
let names1 : [String] = ["Dzh", "Desi", "Tosho", "Patrick", "Spongebob"]
let names2 : Array<String> = ["same", "thing", "for", "this", "aswell"];
print(names[0], names1[4], names2[1])

let students = [125 : "Ivan", 167 : "Alexander"]
let r = students[123]
if let r
{
    print(r)
}

//for cycles
for name in names {
    print("Names of the people are " + name)
}

//for cycles
for (key, value) in students
{
    print("The key \(key) corresponds to the name \(value)")
}

//while cycles
var shouldExecute = !true
var times = 3
while shouldExecute { // 0+
    if times == 2 {
        times -= 1
        continue
    }
    print("\(times) Hello!!!!");
    if times == 0 {
        shouldExecute = false
    } else {

    }
    times -= 1
}

repeat { //1+
//    if flag {
//        break
//    }
    print("\(times) Hello!!!!")
    if times == 0 {
        shouldExecute = false
    } else {

    }
    times -= 1
} while shouldExecute

let count = 0
let things = "computers"

//switch cases
switch count {
case 0:
    print("zero")
    fallthrough
case 1..<3:
    print("3 at most")
case 4...7: //[4,8) == 4...7
    print("7 at most")
case 8:
    print("percicely 8")
default:
    print("a lot!")
}


//switch cases
let point = (1, 1, 3)
switch point {
case let (x, y, z):
    print("My point [\(x),\(y),\(z)]")
case (1,1, _):
    print("My point \(point), \(point.2)")
case (1,1, -2...5): //[-2, 5]
    print("My point \(point)!")

default:
    print("Some point, somewhere.")
}

var numberOne: Int? = 5

let realOne = numberOne ?? 2

let `for` = 5
var v = 1
//wildcards
for _ in 1...10 {
    v += 1
    print("V = \(v)")
    
}

let numbers : [Int] = [2,3,5,6,7,12,2,1,17]
for digits in numbers
{
    print("[\(counter)] correponds to number digit \(digits)")
}
