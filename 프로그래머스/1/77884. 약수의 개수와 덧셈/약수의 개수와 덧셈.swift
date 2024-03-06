import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
var result: Int = 0
    
    for num in (left...right) {
        result += Array(1...num).filter({num % $0 == 0}).count % 2 == 0 ? num : -num
    }
    return result
}