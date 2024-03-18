func solution(_ s:String) -> Int {
    let numDict: [String:Int] = ["zero": 0, "one":1, "two":2, "three":3, "four":4, "five":5, "six":6, "seven":7, "eight":8, "nine":9 ]
    let sArr: [Character] = Array(s)
    var sIndex: Int = 0
    var iArr: [String] = []
    
    while sIndex <= s.count - 1 {
        if let temp = Int(String(sArr[sIndex])) {
            iArr.append(String(temp))
            sIndex += 1
            
        } else if let temp = numDict[String(sArr[sIndex..<(sIndex + 3)])] {
            iArr.append(String(temp))
            sIndex += 3
            
        } else if let temp = numDict[String(sArr[sIndex..<(sIndex + 4)])] {
            iArr.append(String(temp))
            sIndex += 4
            
        } else if let temp = numDict[String(sArr[sIndex..<(sIndex + 5)])] {
            iArr.append(String(temp))
            sIndex += 5
        }
    }
    
    return Int(iArr.joined())!
}