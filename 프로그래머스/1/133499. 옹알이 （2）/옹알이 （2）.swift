import Foundation

func solution(_ babbling:[String]) -> Int {
    let possible: [String] = ["aya", "ye", "woo", "ma"]
    let impossible: [String] = ["ayaaya", "yeye", "woowoo", "mama"]
    var count: Int = 0
    for word in babbling {
        var word = word
        for i in impossible {
            word = word.replacingOccurrences(of: i, with: "0")
        }
        for i in possible {
            word = word.replacingOccurrences(of: i, with: "1")
        }
        word = word.replacingOccurrences(of: "1", with: "")
        if word.count == 0 {
            count += 1
            print(count)
        }
    }
    return count
}