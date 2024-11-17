func doStack() {
    let numOfOrders = Int(readLine()!)!
    var stack: [Int] = []
    var result: [Int] = []
    
    for _ in 0..<numOfOrders {
        let order = readLine()!
        let splitedOrder = order.split(separator: " ")
        
        if order.count != 1 {
            stack.append(Int(String(splitedOrder[1]))!)
        } else if order == "2" {
            let item = stack.popLast() ?? -1
            result.append(item)
        } else if order == "3" {
            result.append(stack.count)
        } else if order == "4" {
            result.append(stack.isEmpty ? 1 : 0)
        } else if order == "5" {
            result.append(stack.last ?? -1)
        }
    }
    
    result.forEach { print($0) }
}

doStack()
