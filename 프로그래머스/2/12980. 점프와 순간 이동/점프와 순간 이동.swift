import Foundation

func solution(_ n:Int) -> Int {
    var jumps = 0
    var target = n

    while true {
        if target > 1 {
            let isOdd = target % 2 != 0
            jumps += isOdd ? 1 : 0
            target /= 2
        } else {
            jumps += target == 1 ? 1 : 0
            return jumps
        }
    }
}