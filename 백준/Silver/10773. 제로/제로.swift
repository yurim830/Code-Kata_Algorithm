func doJamin() {
    let numberOfOrders = Int(readLine()!)!
    var numbers: [Int] = []
    
    for _ in 0..<numberOfOrders {
        let order = readLine()!
        
        if order == "0" {
            numbers.popLast()
        } else {
            numbers.append(Int(order)!)
        }
    }
    
    let total = numbers.reduce(0) { $0 + $1 }
    print(total)
}

doJamin()