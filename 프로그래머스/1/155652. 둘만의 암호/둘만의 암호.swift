import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    let alphabets: [Character] = Set("abcdefghijklmnopqrstuvwxyz").subtracting(Set(skip)).sorted()
    let len = alphabets.count
    var answer: String = ""
    
    for char in s {
        if let i = alphabets.firstIndex(of: char) {
            answer += String(alphabets[(i + index) % len ])
        }
    }
    return answer
}