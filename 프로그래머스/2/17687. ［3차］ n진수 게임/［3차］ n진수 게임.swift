import Foundation

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    let length = t * m
    var chars: [Character] = []
    var currentNum: Int = 0
    while true {
        let str = String(currentNum, radix: n)
        let charArr = Array(str)
        chars.append(contentsOf: charArr)
        if chars.count >= length {
            break
        }
        currentNum += 1
    }
    
    var tubeArr: [Character] = []
    for i in 0..<t {
        let index = i * m + (p - 1)
        tubeArr.append(chars[index])
    }
    let tubeStr: String = String(tubeArr).uppercased()
    return tubeStr
}
