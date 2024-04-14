import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    // [학생 번호:체육복 개수] 딕셔너리 만들기
    var clothes: [Int:Int] = [:]
    for i in 1...n {       // 각자 1개씩 가지고 있다고 가정
        clothes[i] = 1
    }
    for i in lost {        // 잃어버린 체육복 적용
        clothes[i]! -= 1
    }
    for i in reserve {     // 여분 체육복 적용
        clothes[i]! += 1
    }
    
    
    // 체육복 공유하기
    var count: Int = 0
    for i in 1...n {
        guard clothes[i] == 0 else {
            count += 1
            continue
        }
        if clothes[i - 1] == 2 {
            count += 1
        } else if clothes[i + 1] == 2 {
            clothes[i + 1] = 1
            clothes[i] = 1
            count += 1
        }
    }
    return count
}