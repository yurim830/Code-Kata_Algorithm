import Foundation

func solution(_ nums:[Int]) -> Int {
    let lastIndex = nums.count - 1
    var answer = 0
    for i in 0...(lastIndex - 2){
        for j in (i + 1)...(lastIndex - 1){
            for k in (j + 1)...lastIndex {
                if isPrime(nums[i] + nums[j] + nums[k]) {
                    answer += 1
                }
            }
        }
    }
    
    return answer
}

func isPrime(_ num: Int) -> Bool {
    for i in 2...Int(sqrt(Double(num))) {
        if num % i == 0 {
            return false
        }
    }
    return true
}