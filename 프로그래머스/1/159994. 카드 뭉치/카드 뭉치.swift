import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1 = cards1
    var cards2 = cards2
    for i in goal {
        if i == cards1.first {
            cards1.removeFirst()
            continue
        } else if i == cards2.first {
            cards2.removeFirst()
        } else { return "No" }
    }
    return "Yes"
}