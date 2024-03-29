import Foundation

func solution(_ s:String) -> [Int] {
    let arrS = Array(s)
    var answer: [Int] = []
    for (i, char) in arrS.enumerated() {
        let jump = i - (arrS[0..<i].lastIndex(of: char) ?? i)
        if jump > 0 {
            answer.append(jump)
        } else {
            answer.append(-1)
        }
    }
    return answer
}