import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var responseDict: [Character:Int] = ["R":0, "T":0, "F":0, "C":0, "M":0, "J":0, "A":0, "N":0]
    var result: String = ""
    
    // 지표별 점수
    for (i, choice) in choices.enumerated() {
        if choice < 4 {
            responseDict[survey[i].first!]! += (4 - choice)
        } else if choice == 4 {
            continue
        } else {
            responseDict[survey[i].last!]! += (choice - 4)
        }
    }
    
    // 결과
    // R vs T
    if responseDict["R"]! >= responseDict["T"]! { // R이 사전 순으로 빠르기때문에 >=
        result += "R"
    } else {
        result += "T"
    }
    
    // F vs C
    if responseDict["F"]! > responseDict["C"]! {
        result += "F"
    } else {
        result += "C"
    }
    
    // M vs J
    if responseDict["M"]! > responseDict["J"]! {
        result += "M"
    } else {
        result += "J"
    }
    
    // A vs N
    if responseDict["A"]! >= responseDict["N"]! { // A가 사전 순으로 빠르기때문에 >=
        result += "A"
    } else {
        result += "N"
    }
    
    return result
}