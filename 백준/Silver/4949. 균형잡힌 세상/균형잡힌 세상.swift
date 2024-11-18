enum CapsuleStyle {
    case big
    case small
}

func checkBalance() {
    while true {
        let input = readLine()!
        if input == "." { break } // 종료 조건
        
        var styleStack: [CapsuleStyle] = []
        var isBalanced = true
        
        for char in input {
            if char == "[" {
                styleStack.append(.big)
            } else if char == "]" {
                if styleStack.popLast() != .big {
                    isBalanced = false
                    break
                }
            } else if char == "(" {
                styleStack.append(.small)
            } else if char == ")" {
                if styleStack.popLast() != .small {
                    isBalanced = false
                    break
                }
            }
        }
        
        if isBalanced && styleStack.isEmpty {
            print("yes")
        } else {
            print("no")
        }
    }
}

checkBalance()