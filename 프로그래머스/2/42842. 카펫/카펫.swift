import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var yellowSquare: [(Int, Int)] = []
    for i in 1...Int(sqrt(Double(yellow))) {
        if yellow % i == 0 {
            yellowSquare.append((yellow / i , i))
        }
    }
    for i in yellowSquare {
        if (i.0 + i.1 + 2) * 2 == brown {
            return [i.0 + 2, i.1 + 2]
        } else { continue }
    }
    return []
}