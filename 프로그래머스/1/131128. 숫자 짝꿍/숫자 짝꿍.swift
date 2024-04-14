import Foundation

func solution(_ X:String, _ Y:String) -> String {
    let xDict = makeNumDict(X)
    let yDict = makeNumDict(Y)
    
    // mate 구하기
    var mate: String = ""
    for i in stride(from: 9, through: 0, by: -1) { // 9부터 0까지
        mate += String(repeating: Character(String(i)), count: min(xDict[i]!, yDict[i]!))
    }
    
    // mate 판별하기
    if mate.isEmpty {
        return "-1"
    }
    if mate.allSatisfy( { $0 == "0" }) {
        return "0"
    }
    return mate
}

func makeNumDict(_ num: String) -> [Int:Int] {
    var numDict: [Int:Int] = [:]
    // 빈 사전 만들기
    for i in 0...9 {
        numDict[i] = 0
    }
    // 사전 값 넣기
    for i in num {
        if let count = numDict[Int(String(i))!] {
            numDict[Int(String(i))!] = count + 1
        }
    }
    return numDict
}