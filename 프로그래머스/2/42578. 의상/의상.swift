import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var countDict: [String:Int] = [:]
    for cloth in clothes {
        if let type = cloth.last {
            let count = countDict[type] ?? 1 // 안 입는 경우 +1
            countDict[type] = count + 1
        }
    }
    
    var result: Int = 1
    for count in countDict { result *= count.1 }
    return result - 1
}