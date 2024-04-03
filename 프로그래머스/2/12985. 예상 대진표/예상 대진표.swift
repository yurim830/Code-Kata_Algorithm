import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 0
    var tempA = a
    var tempB = b
    
    for i in 1...(n / 2) {
        answer = i
        if max(tempA, tempB) % 2 == 0 && abs(tempA - tempB) == 1 {
            return answer
        }
        tempA = tempA % 2 == 1 ? (tempA + 1) / 2 : tempA / 2
        tempB = tempB % 2 == 1 ? (tempB + 1) / 2 : tempB / 2
    }
    return answer
}