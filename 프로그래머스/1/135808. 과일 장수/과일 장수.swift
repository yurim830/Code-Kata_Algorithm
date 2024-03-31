import Foundation
// 사과의 최대 점수 k, 한 상자에 들어가는 사과의 수 m, 사과들의 점수 score
func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let sortedApples = score.sorted(by: >)
    var result: Int = 0
    
    let boxAmount = sortedApples.count / m
    guard boxAmount != 0 else { return 0 }
    
    for i in 1...boxAmount {
        result += sortedApples[ (i * m) - 1] * m
    }
    return result
}