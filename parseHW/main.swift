import Foundation
func evaluate(expression: String) -> Double {
    if(isWellStructured(expression) == true)
    {
        let chars = Array(expression.filter { !$0.isWhitespace })
        return evaluateHelper(chars: chars, start: 0, end: chars.count - 1)
    }
    return 0.0
}

func evaluateHelper(chars: [Character], start: Int, end: Int) -> Double {
    var currentOp: Character = "+"
    var currentNum: Double = 0
    var result: Double = 0
    var i = start
    var hasDecimal = false
    
    while i <= end {
        let c = chars[i]
        if c.isNumber {
            if hasDecimal {
                currentNum += Double(String(c))! / pow(10.0, Double(String(currentNum.truncatingRemainder(dividingBy: 1)).count - 2))
            } else {
                currentNum = currentNum * 10 + Double(String(c))!
            }
        } else if c == "." {
            hasDecimal = true
        } else if c == "(" {
            var j = i + 1
            var parenCount = 1
            while parenCount > 0 {
                if chars[j] == "(" {
                    parenCount += 1
                } else if chars[j] == ")" {
                    parenCount -= 1
                }
                j += 1
            }
            currentNum = evaluateHelper(chars: chars, start: i + 1, end: j - 2)
            i = j - 1
        } else if "+-*/^".contains(c) {
            if currentOp == "+" {
                result += currentNum
            } else if currentOp == "-" {
                result -= currentNum
            } else if currentOp == "*" {
                result = result * currentNum
            } else if currentOp == "/" {
                result /= currentNum
            } else if currentOp == "^" {
                result = pow(result, currentNum)
            }
            currentNum = 0
            hasDecimal = false
            currentOp = c
        }
        i += 1
    }

    
    if currentOp == "+" {
        result += currentNum
    } else if currentOp == "-" {
        result -= currentNum
    } else if currentOp == "*" {
        result = result * currentNum
    } else if currentOp == "/" {
        result /= currentNum
    } else if currentOp == "^" {
        result = pow(result, currentNum)
    }
    
    return Double(String(format: "%.3f", result)) ?? 0.0
}



func isWellStructured(_ s: String) -> Bool {
    var st = [Character]()
    let mp: [Character: Character] = [")": "(", "]": "[", "}": "{"]
    for c in s {
        if c == "(" || c == "[" || c == "{" {
            st.append(c)
        }
        else if c == ")" || c == "]" || c == "}" {
            if st.isEmpty || st.last != mp[c] {
                return false
            }
            st.removeLast()
        }
    }
    
    return st.isEmpty
}

print(evaluate(expression: "2^-2"))
