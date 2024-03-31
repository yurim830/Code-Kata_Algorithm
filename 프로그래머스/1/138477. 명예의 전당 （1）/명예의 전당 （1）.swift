import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var hallOfFame: [Int] = []
    var lowestScore: [Int] = []
    for (index, score) in score.enumerated() {
        hallOfFame.append(score)
        hallOfFame.sort(by: {$0 > $1})
        if hallOfFame.count > k {
            hallOfFame.popLast()
        }
        lowestScore.append(hallOfFame.last!)
    }
    return lowestScore
}