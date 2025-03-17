func doStack() {
    let numOfOrders = Int(readLine()!)!
    var stack: [Int] = []
    var results: [String] = []

    for _ in 0..<numOfOrders {
        let order = readLine()!
        let parts = order.split(separator: " ")

        if parts[0] == "1", 
           let value = Int(parts[1]) {
            stack.append(value)
        } else if order == "2" {
            let item = stack.popLast() ?? -1
            results.append(String(item))
        } else if order == "3" {
            results.append(String(stack.count))
        } else if order == "4" {
            results.append(stack.isEmpty ? "1" : "0")
        } else if order == "5" {
            results.append(String(stack.last ?? -1))
        }
    }

    results.forEach { print($0) }
}

doStack()