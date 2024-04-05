import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var count: Int = 0
    var section = section
    while !section.isEmpty {
        let start = section.first ?? 0
        let end = start + m
        if start == 0 { break }
        
        count += 1
        while !section.isEmpty {
            if section[0] >= start && section[0] < end {
                section.removeFirst()
            } else { break }
        }
    }
    return count
}