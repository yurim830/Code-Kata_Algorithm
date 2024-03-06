import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result: Int = 0
    
    for num in (left...right){
        result += floor(sqrt(Double(num))) == sqrt(Double(num)) ? -num : num
    }
    return result
}