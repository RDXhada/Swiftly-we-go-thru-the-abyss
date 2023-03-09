import Foundation


let greeting = "hello"
let condition = !false
if condition
{
    print(greeting)
}
else
{
    print("What?")
}

//declaration and definition of the function
func printGreetings()
{
    print(greeting + " there")
}
//execution of the function
printGreetings()

//labelName function
func f1(labelName parameter1 : String) -> String
{
    return "f1 corresponds to \(parameter1)"
}
//function with no labelName
func f2(parameter1 : String) -> String
{
    return "f2 corresponds to  \(parameter1)"
}

let result1 = f1(labelName: "this sentence.")
print(result1)
let result2 = f2(parameter1: "no label name.")
print(result2)

func create(fileWithName fileName : String, andExtention extention : String) -> Bool
{
    print("File name is : \"\(fileName)\" and the extention is \"\(extention)\"")
    return true
}

//wildcard functions
func createWithWildcard(_ fileName : String, _ extention : String) -> Bool
{
    print("The file is  \"\(fileName)\"" + " and this is the extention \"\(extention)\"")
    return true;
}



let result3 = create(fileWithName: "Disovery", andExtention: "TVprogramme")
let result4 = createWithWildcard("Program files", "Downloads")

//function without result
func noResult()
{}
func withParametersAndNoResult(file : String, date : String) -> Void
{}

func noParametersNoResult()->()
{}

withParametersAndNoResult(file: "Hello", date: "there!")

//n-ary point
let point = (x : 1, y : 1)
print(point)


//function to find max number in array

func maxItem(inArray numbers : [Int]) -> (item : Int, index : Int)
{
    var index = -1
    var max = Int.min
    for (i,value) in numbers.enumerated()
    {
        if max < value
        {
            max = value
            index = i
        }
    }
    return (item : max, index : index)
}
//function to find min number in array
func minItem(inArray numbers : [Int]) -> (item : Int, index : Int)
{
    var index = -1
    var min = Int.max
    for (i,value) in numbers.enumerated()
    {
        if min > value
        {
            min = value
            index = i
        }
    }
    return (item : min, index : index)
}

let pairMax = maxItem(inArray: [12,3,4,5,66,76,7])
print(pairMax)

let pairMin = minItem(inArray: [-2,-3,2,5,6,7,231,4,-200])
print(pairMin)


//inout
func updatePrice(oldPrice x : inout Int, newPrice : Int)
{
    x = newPrice
}

var macMiniPrice = 1000
updatePrice(oldPrice: &macMiniPrice, newPrice: 1030);
print(macMiniPrice)

//prefix !, -, +
//postfix ?,!
//infix a + b
//ternary operator condition ? true : false
//nilable ?? value


infix operator ^^
func ^^ (left : String, right : Int) -> String
{
    if right <= 0
    {
        return ""
    }
    else
    {
        var result = left
        for _ in 1..<right
        {
            result += left
        }
        return result
    }
}
let r = "hi" ^^ 3
print(r)

//default result function
func defaultResultFunction(parameter text : String = "") -> String
{
    return text
}

print(defaultResultFunction(parameter: "This is a sting"))
print(defaultResultFunction())


//Variadic Parameters
func arithmeticMean(_ numbers: Double...) -> Double
{
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
print(arithmeticMean(1, 2, 3, 4, 5))
// returns 3.0, which is the arithmetic mean of these five numbers
print(arithmeticMean(3, 8.25, 18.75))

//Nested functions
func chooseStepFunction(backward: Bool) -> (Int) -> Int
{
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
var currentValue = -4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the nested stepForward() function
while currentValue != 0
{
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")
