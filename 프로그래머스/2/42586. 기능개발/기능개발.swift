import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var currentMaxDay: Int = -1
    var result: [Int] = []
    
    for i in 0..<progresses.count {
        let leftPercent = 100 - progresses[i]
        let neededDay = Int(ceil(Float(leftPercent) / Float(speeds[i])))
        print(leftPercent, neededDay)
        
        // 1번기능
        if i == 0 {
            currentMaxDay = neededDay
            result.append(1)
            continue
        }
        
        // 앞 기능보다 빨리끝나거나 같은 경우 -> result += 1
        if currentMaxDay >= neededDay{
            let cnt = result.count
            result[cnt-1] += 1
        } else {
        // 앞 기능보다 늦게 끝나는 경우 -> max, result 수정
            currentMaxDay = neededDay
            result.append(1)
        }
    }
    return result
}