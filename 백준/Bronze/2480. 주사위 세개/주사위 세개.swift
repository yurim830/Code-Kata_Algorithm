func getPrize() {
    var scoreDictionary: [Int:Int] = [1:0, 2:0, 3:0, 4:0, 5:0, 6:0]
    
    let input = readLine()!
    let scoreArr = input.split(separator: " ").map { Int(String($0))! }
    var maxScore: Int = 0
    
    for score in scoreArr {
        scoreDictionary[score]! += 1
    }
    
    for (key, value) in scoreDictionary {
        if value == 3 {
            print(10000 + key * 1000)
            return
        } else if value == 2 {
            print(1000 + key * 100)
            return
        } else if value == 1 {
            maxScore = max(key, maxScore)
        }
    }
    
    print(maxScore * 100)
}

getPrize()