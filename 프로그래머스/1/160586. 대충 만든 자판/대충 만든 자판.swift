import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var result: [Int] = []
    var totalMap: [Character:Int] = [:]
    for map in keymap{
        let map = Array(map)
        for (i, val) in map.enumerated() {
            if totalMap[val] == nil {
                totalMap[val] = i
            } else {
                totalMap[val] = min(totalMap[val]!, i)
            }
        }
    }
    
    for target in targets {
        var taps: Int = 0
        let chars = Array(target)
        for char in chars {
            taps += (totalMap[char] ?? -99999) + 1
        }
        result.append(taps > 0 ? taps : -1)
    }
    return result
}