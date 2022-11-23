//Functions
print("*FUNCTIONS*")
func Student(name:String) -> String
{
    return name
}
print(Student(name: "Dzhem"))

//Calling functions
print("Calling functions")
func display(number1 : Int) -> Int
{
    let a = number1
    return a
}
print(display(number1: 100))
print(display(number1: 200))

//Parameters and return values
print("Parameters and return values")
func multipleParam(number1 : Int, number2: Int) -> Int
{
    return number1 + number2
}
print(multipleParam(number1: 1, number2: 2))
print(multipleParam(number1: 12, number2: 43))

//Functions without parameters
print("Functions without parameters")
func votersName() -> String
{
    return "Alice"
}
print(votersName())

//Functions with return calues
print("Functions with return calues")
func largestNumber(arr : [Int]) -> (large : Int, small : Int)
{
    var lar = arr[0]
    var sml = arr[0]
    for i in arr[1..<arr.count]
    {
        if i < sml
        {
            sml = i
        }
        else if i > lar
        {
            lar = 1
        }
    }
    return(lar,sml)
}

let arrNumbers = largestNumber(arr: [2,3,5,6,-12,-40,35,6])
print("Largest num is: \(arrNumbers.large) \nSmallest number is: \(arrNumbers.small)")

//Functions without return values
print("Functions without return values")
func sum(x: Int, y: Int)
{
    let Ans = x+y
    print(Ans)
}
sum(x: 20, y: 30)

func minMax(array : [Int]) -> (min : Int, max : Int)?
{
    if array.isEmpty {return nil}
    var min = 0;
    var max = 0;
    for value in array[1..<array.count]
    {
        if value < min
        {
            min = value
        }
        else if value > max
        {
            max = value
        }
    }
    return (min,max)
}

if let minMaxArray = minMax(array: [1,2,3,4,-35,78,32,3,0])
{
    print("Minimum value is: \(minMaxArray.min) \nMax value is: \( minMaxArray.max)")
}

//Local parameter names
print("Local parameter names")
func sample(number:Int)
{
    print(number)
}
sample(number: 34)
sample(number: 69)
sample(number: 5)

//External parameter names
print("External parameter names")
func pow(firstArg x:Int,secondArg n:Int) -> Int
{
    var res = x
    for _ in 1..<n
    {
        res = res*x
    }
    return res
}
print(pow(firstArg: 2, secondArg: 3))


//Variadic parameters
print("Variadic parameters")
func PrintElements<N>(members: N...)
{
    for i in members
    {
        print(" \(i) ")
    }
}
PrintElements(members: 1,2,3,4)
PrintElements(members: "Swift", "C++", "See shark")


//Constant, Variable and I/O Parameters
print("*Constant, Variable and I/O Parameters")
func temp(a1: inout Int, b1: inout Int)
{
   let t = a1
   a1 = b1
   b1 = t
}

var no = 2
var co = 10
temp(a1: &no, b1: &co)
print("Swapped values are \(no), \(co)")

//Function Types & its Usage
print("Function Types & its Usage")
func inputs(no1: Int, no2: Int) -> Int {
   return no1/no2
}

print(inputs(no1: 20, no2: 10))
print(inputs(no1: 36, no2: 6))

//Using function types
print("Using function types")
func sums(x:Int, y: Int) -> Int
{
    return x+y
}
var adition : (Int, Int) -> Int  = sums
print(adition(6,60))

//Nested functions
print("Nested functions")
func calcDecrement(forDecrement total: Int) -> () -> Int {
   var overallDecrement = 0
   func decrementer() -> Int {
      overallDecrement -= total
      return overallDecrement
   }
   return decrementer
}

let decrem = calcDecrement(forDecrement: 30)
print(decrem())
