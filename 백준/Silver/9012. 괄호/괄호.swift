func configureCapsule() {
    let numberOfOrders = Int(readLine()!)!
    
    for _ in 0..<numberOfOrders {
        let order = readLine()!
        var counter: Int = 0
        
        for capsule in order {
            if capsule == "(" {
                counter += 1
            } else {
                counter -= 1
            }
            
            if counter < 0 {
                break
            }
        }
        
        if counter == 0 {
            print("YES")
        } else {
            print("NO")
        }
    }
}

configureCapsule()