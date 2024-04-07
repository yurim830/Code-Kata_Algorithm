import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let myLotto: [Int] = lottos.filter {$0 != 0}
    let zeros: Int = 6 - myLotto.count
    var countSame: Int = 0
    
    for i in myLotto {
        if win_nums.contains(i) {
            countSame += 1
        }
    }
    let maxRank: Int = countSame + zeros >= 2 ? 7 - (countSame + zeros) : 6
    let minRank: Int = countSame >= 2 ? 7 - countSame : 6
    return [maxRank, minRank]
}