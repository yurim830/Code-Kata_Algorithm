import Foundation

func solution(_ number:[Int]) -> Int {
    var count: Int = number.count
    var trio : Int = 0
    for i in 0 ..< (count - 2) {
        for j in (i+1) ..< count {
            for k in (j+1) ..< count {
                if number[i] + number[j] + number[k] == 0 {
                    trio += 1
                }
            }
        }
    }
    
    return trio
}