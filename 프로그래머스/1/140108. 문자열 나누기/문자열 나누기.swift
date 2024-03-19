import Foundation

func solution(_ s:String) -> Int {
    var leftString: [Character] = Array(s)
    var numOfSlice: Int = 0
    
    while leftString != [] {
        numOfSlice += 1
        execute(&leftString)
    }
    return numOfSlice
}

func execute(_ leftString: inout [Character]) {
    let x = leftString.removeFirst()
    var same: Int = 1
    var diff: Int = 0
    while leftString != [] {
        let target = leftString.removeFirst()
        if x == target {
            same += 1
        } else {
            diff += 1
        }
        if same == diff{
            break
        }
    }
}