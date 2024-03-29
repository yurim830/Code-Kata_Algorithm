import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var resultSet: Set<Int> = []
    for i in 0..<numbers.count {
        for j in (i + 1)..<numbers.count {
            resultSet.insert(numbers[i] + numbers[j]) // Set은 append 대신 insert
        }
    }
    return Array(resultSet).sorted()
}