import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer: [Int] = []
    for i in commands {
        let newArr = Array(array[i[0] - 1 ..< i[1]]).sorted()
        answer.append(newArr[i[2] - 1])
    }
    return answer
}