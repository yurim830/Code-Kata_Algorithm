import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    return (1...number).map {
        countDivisors($0) <= limit ? countDivisors($0) : power
    } .reduce(0, +)
}

func countDivisors(_ num: Int) -> Int {
    var count: Int = 0
    let sqrtNum: Int = Int(sqrt(Double(num)))
    for i in 1...sqrtNum {
        if num % i == 0 {
            count += 1
        }
    }
    return sqrtNum * sqrtNum == num ? count * 2 - 1 : count * 2
}