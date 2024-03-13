import Foundation
func solution(_ n:Int) -> Int {
    // reversed 3진수 구하기
    var reversedArr: [Int] = []
    var temp = n
    while true {
        if temp == 0 { break }
        reversedArr.append(temp % 3)
        temp /= 3
    }
    
    // 10진수 구하기
    let arr = reversedArr.reversed()
    var decimalN: Int = 0
    for (i, num) in arr.enumerated() {
        decimalN += Int(pow(3.0,Double(i))) * num
        print(decimalN)
    }
    return decimalN
}