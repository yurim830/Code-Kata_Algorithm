import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let arrT: [Character] = Array(t)
    let lenP: Int = p.count
    var count: Int = 0
    for i in 0...(t.count - lenP) {
        if Int(String(arrT[i ..< i + lenP]))! <= Int(p)! {
            count += 1
        }
    }
    return count
}
