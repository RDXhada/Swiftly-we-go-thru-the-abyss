//first swift program

//semicolons are not required, but if you write multiple actions in one line of code, swift will require you to use a semicolon, otherwise you get syntax error
var myString = "Hello swift!" ; print(myString)

print("Hello there!")

//keywords in declarations
//Class    deinit    Enum    extension
//Func    import    Init    internal
//Let    operator    private    protocol
//public    static    struct    subscript
//typealias    var

//keywords in statements
//break    case    continue    default
//do    else    fallthrough    for
//if    in    return    switch
//where    while

//keywords in expressions
//as    dynamicType    false    is
//nil    self    Self    super
//true    _COLUMN_    _FILE_    _FUNCTION_
//_LINE_

//keywords used in particular contexts
//associativity    convenience    dynamic    didSet
//final    get    infix    inout
//lazy    left    mutating    none
//nonmutating    optional    override    postfix
//precedence    prefix    Protocol    required
//right    set    Type    unowned
//weak    willSet

typealias feet = Int
var distance : feet = 200
print(distance)

var pi = 3.14
print(pi)

var pi1 : Float
pi1 = 3.14
print(pi1)

var string1  = "Damn"
var string2 = "this"
print("\(string1) son where did u find \(string2).")

print("This is so cool \(pi) \n LoL \(distance)")

//forced unwrapping "?"
var perhapsString1 : String? = "FORCED UNWRAPPING"
if perhapsString1 != nil
{
    print(perhapsString1 as Any)
}
else
{
    print("Your string does not have a value")
}

//automatic unwrapping
var perhapsString2:String?
perhapsString2 = "AUTOMATIC UNWRAPPING"

if perhapsString2 != nil
{
   print(perhapsString2!)
}
else
{
    print("Your string does not have a value")
}

//optional binding
var optionalString : String?
optionalString = "Optional binding"
if let conditionString = optionalString
{
    print("Your string has - \(conditionString)")
}
else
{
    print("Your string does not have a value")
}

//Tuples
var tuple = (404, "amaizing", "lol", 3.14)

print("Damn, \(tuple.0) bruh.")
print("This code is \(tuple.1).")
print("Pi has a value of \(tuple.3)")

//Constants
let constPI = 3.14
let constKills = 17
let constDeaths = 3
let _constSomething = "Hello there"
print(constPI)
print("\(_constSomething) summoner! Your kills are \(constKills), and your deaths are \(constDeaths).")


//Literals
let decimalInteger = 17 // integer literal (decimal notation)
let PiNumber = 3.14159 // floating point literal
let text = "Hello there!" //string literal
//integer
let binaryInteger = 0b10001 // 17 in binary notation
let octalInteger = 0o21 // 17 in octal notation
let hexadecimalInteger = 0x11 // 17 in hexadecimal notation
//double
let decimalDouble = 12.1875  // decimal (double) notation
let exponentDouble = 1.2187e1 // exponent notation
let hecadecimalDouble = 0xC.3p0 // hexadecimal (double) notation
//string

//Escape sequence    Meaning
//\0             Null Character
//\\             \character
//\b             Backspace
//\f             Form feed
//\n             Newline
//\r             Carriage return
//\t             Horizontal tab
//\v             Vertical tab
//\'             Single Quote
//\"             Double Quote
//\000           Octal number of one to three digits
//\xhh...        Hexadecimal number of one or more digits

let stringtxt = "Hello \t There \n I'm \t Dzhem"
print(stringtxt)

//boolean literals  (true,false,[nil - no value])

//Operators - arithmetic, comparison, logical, bitwise, assignment,range, misc
//Arithmetic operator
//let A be 10 and B be 20
//Operator    Description    Example
//+         Adds two operands    A + B will give 30
//−      Subtracts second operand from the first    A − B will give -10
//*         Multiplies both operands    A * B will give 200
//"/"         Divides numerator by denominator    B / A will give 2
//%       Modulus Operator and remainder of after an integer/float                                      division    B % A will give 0


//Comparison Operators
//let A be 10 and B be 20
//Operator    Description    Example
//==    Checks if the values of two operands are equal or not; if yes, then the condition becomes true.    (A == B) is not true.
//!=    Checks if the values of two operands are equal or not; if values are not equal, then the condition becomes true.    (A != B) is true.
//>    Checks if the value of left operand is greater than the value of right operand; if yes, then the condition becomes true.    (A > B) is not true.
//<    Checks if the value of left operand is less than the value of right operand; if yes, then the condition becomes true.    (A < B) is true.
//>=    Checks if the value of left operand is greater than or equal to the value of right operand; if yes, then the condition becomes true.    (A >= B) is not true.
//<=    Checks if the value of left operand is less than or equal to the value of right operand; if yes, then the condition becomes true.    (A <= B) is true.

//Logical Operators
//let A be 1 and B be 0
//Operator    Description    Example
//&&    Called Logical AND operator. If both the operands are non-zero, then the condition becomes true.    (A && B) is false.
//||    Called Logical OR Operator. If any of the two operands is non-zero, then the condition becomes true.    (A || B) is true.
//!    Called Logical NOT Operator. Use to reverses the logical state of its operand. If a condition is true, then the Logical NOT operator will make it false.    !(A && B) is true.

//bitwise operators - & ; | ; ^
//let A be 60 and B be 13
//Operator    Description    Example
//&    Binary AND Operator copies a bit to the result, if it exists in both operands.    (A & B) will give 12, which is 0000 1100
//|    Binary OR Operator copies a bit, if it exists in either operand.    (A | B) will give 61, which is 0011 1101
//^    Binary XOR Operator copies the bit, if it is set in one operand but not both.    (A ^ B) will give 49, which is 0011 0001
//~    Binary Ones Complement Operator is unary and has the effect of 'flipping' bits.    (~A ) will give -61, which is 1100 0011 in 2's complement form.
//<<    Binary Left Shift Operator. The left operands value is moved left by the number of bits specified by the right operand.    (A << 2 will give 240, which is 1111 0000
//>>    Binary Right Shift Operator. The left operands value is moved right by the number of bits specified by the right operand.    A >> 2 will give 15, which is 0000 1111

//Assignment operators
//Operator    Description    Example
//=    Simple assignment operator, Assigns values from right side operands to left side operand    C = A + B will assign value of A + B into C
//+=    Add AND assignment operator, It adds right operand to the left operand and assigns the result to left operand    C += A is equivalent to C = C + A
//-=    Subtract AND assignment operator, It subtracts right operand from the left operand and assigns the result to left operand    C -= A is equivalent to C = C - A
//*=    Multiply AND assignment operator, It multiplies right operand with the left operand and assigns the result to left operand    C *= A is equivalent to C = C * A
///=    Divide AND assignment operator, It divides left operand with the right operand and assigns the result to left operand    C /= A is equivalent to C = C / A
//%=    Modulus AND assignment operator, It takes modulus using two operands and assigns the result to left operand    C %= A is equivalent to C = C % A
//<<=    Left shift AND assignment operator    C <<= 2 is same as C = C << 2
//>>=    Right shift AND assignment operator    C >>= 2 is same as C = C >> 2
//&=    Bitwise AND assignment operator    C &= 2 is same as C = C & 2
//^=    bitwise exclusive OR and assignment operator    C ^= 2 is same as C = C ^ 2
//|=    bitwise inclusive OR and assignment operator    C |= 2 is same as C = C | 2

//Range operators
//1..5 gives 1,2,3,3,5 -> closed range
//1..<5 gives 1,2,3,4 ->half open range
//1... gives 1,2,3,4....end of elem -> one sided range
//...2 gives 1,2 ->one sided range

//Misct operator
//Unary minus -> -3 or -4 and etc.
//Unary plus ->  +6 or +7 (gives 6/gives 7) and etc.
//Ternary Conditional -> ?: -> condition ? then true/value X : else false/value Y


//Operators Precedence (grouping of terms in an expression)
//Primary Operators for expressions: () [] x++ x-- (left-to-right)
//Unary Operators: * & + - ! ~ ++x --x (right-to-left)
//Binary Operators: & | ^ && || (left-to-right)
//Ternary Operator: ?:
//Assignment Operators: = += -= *= /= %= >>= <<= &= ^= !=


//IF statements and ternary operator ?:

//Strings
//multiple line strings
let bigConstString = """
Oh my lord man
You can write like this,
it's very cool
"""
print(bigConstString)

//emtpy string
let A = ""
if A.isEmpty
{
    print("emtpy string")
}
else
{
    print("string has element/s")
}

//String constants
// let is used to assign a constant value/string
//if we use var -> our string CAN be modified
//if we use let -> our string CANNOT be modified


//String interpolation
var variA = 20
let constA = 100
var varC:Float = 20.0

var stringA = "\(variA) times \(constA) is equal to \(varC * 100)"
print( stringA )

//String Concatenation
let first = "Name|"
let second = "Age|"
let third = "Sex"
let whole = first + second + third
print(whole)

//String length
print(whole.count)

//String comparison
if (first == second)
{
    print("Both are equal")
}
else
{
    print("Both are not equal")
}

//String Iterating
for chars in "This string"
{
    print(chars, terminator: " ")
}

print("\n")

//Unicode strings
//You can access a UTF-8 and UTF-16 representation of a String by iterating over its utf8 and utf16 properties as demonstrated in the following example:
var unicodeString = "Dog???"

print("UTF-8 Codes: ")
for code in unicodeString.utf8 {
   print("\(code) ")
}

print("\n")

print("UTF-16 Codes: ")
for code in unicodeString.utf16 {
   print("\(code) ")
}

//String Functions & Operators
// isEmpty, hasPrefix(), hasSuffix(), toInt(), count(), utf8, utf16, unicodeScalars
// *, *= , == , <, startIndex, endIndex, Indices, remove(at position), insert(value, at position), reversed()

print("\n")
//fors
for charr in "Hello"
{
    print(charr);
}

//Concatenating using append
var A1:String = "Hello"
var B1:String = " There!"
A1.append(B1)
print(A1)

//Arrays
var someIntArr:[Int] = [10,2,3,4,5]
print(someIntArr[0])

//Modifying arrays
someIntArr.append(20)
someIntArr.append(35)
print(someIntArr[6])
someIntArr += [28]
print(someIntArr[7])

var someStringArr:[String] = ["Hello"]
someStringArr.append("There")
someStringArr.append("Summoner.")
for item in someStringArr
{
    print(item)
}

var someStrs = [String]()

someStrs.append("Apple")
someStrs.append("Amazon")
someStrs += ["Google"]

for (index, item) in someStrs.enumerated() {
   print("Value at index = \(index) is \(item)")
}

//Adding elements of two arrays into one array
var arr1:[Int] = [1,2,3,4]
var arr2:[Int] = [56,6,75]
var arrW = arr1 + arr2
for item in arrW
{
    print(item)
}
//array count
print("Total elements in list are \(arrW.count)")
//Empty property array
print(arrW.isEmpty)

//Sets
var someSet = Set<String>()
someSet.insert("c")
print(someSet.count)
someSet.remove("c")
print(someSet.count)

//Iterating over a gives se
let ingredients : Set = ["cocoa beans", "sugar", "butter", "milk", "almond", "flour"]
for items in ingredients
{
    print(items)
}

print(ingredients.contains("milk"))
print(ingredients.count)

//Ordered set output
//sorts by by first letter
for items in ingredients.sorted()
{
    print(items)
}

//Performing set operations
//intersection, union, substracting
let evens : Set = [10,12,14,16]
let odds : Set  = [11,13,15,17]
let primes = [2,3,5,7]
print(odds.union(evens).sorted())
print(odds.intersection(evens).sorted())
print(odds.subtracting(primes).sorted())


//Dictionaries
var someDict : [Int:String] = [1:"One", 2:"Two", 3:"Three"]
var cities = ["Sofia", "Burgas", "Varna", "Shumen"]
var distanc = [250,130,120,60]
let cityDistanceDictionary = Dictionary(uniqueKeysWithValues: zip(cities, distanc))
print(cityDistanceDictionary)

//filtering
var closecCities = cityDistanceDictionary.filter {$0.value < 150}
print(closecCities)

//dictionary grouping
var groupedCities = Dictionary(grouping: cities) { $0.first!}
print(groupedCities)

//accesing dictionaries
print("Value of key 1 is \(String(describing: someDict[1]))")
print("Value of key 4 is \(String(describing: someDict[4]))")

//modifying dictionaries
let newValue = someDict.updateValue("New value of two", forKey: 2)
print("Value of key 2 is \(String(describing: someDict[2]))")

//remove key-value pairs
let removedValue = someDict.removeValue(forKey: 3)
//other option is to just write someDict[3] = nil
print("Value of key 3 is \(String(describing: someDict[3]))")

//Iterating over a dictionary
var someDict1:[Int:String] = [1:"One", 2:"Two", 3:"Three"]

for (index, keyValue) in someDict1 {
    print("Dictionary key \(index) - Dictionary value \(keyValue)")
}

//Convert to arrays
let dictKeys = [Int](someDict1.keys)
let dictValues = [String](someDict1.values)
print("Keys: ")
for key in dictKeys
{
    print(key)
}
print("Values: ")
for val in dictValues
{
    print(val)
}

//Count property
print("Count of elements in the dictionary is: \(someDict1.count)")

//Empty property
var someDict2:[Int:String] = [Int:String]()
if someDict2.isEmpty == true
{
    print("it is empty")
}
else
{
    print("its not emtpy")
}
