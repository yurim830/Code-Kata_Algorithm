func solution(_ info: [[Int]], _ n: Int, _ m: Int) -> Int {
    let itemCount = info.count
    let maxB = m

    // 초기화: dp[i][b] = A 도둑의 최소 흔적
    var dp = Array(repeating: Array(repeating: Int.max, count: maxB), count: itemCount + 1)
    dp[0][0] = 0 // 아무 물건도 훔치지 않았을 때

    for i in 0..<itemCount {
        let aTrace = info[i][0]
        let bTrace = info[i][1]
        for b in 0..<maxB {
            if dp[i][b] == Int.max { continue }

            // Case 1: A 도둑이 훔침 → A에 흔적 +aTrace
            if dp[i + 1][b] > dp[i][b] + aTrace {
                dp[i + 1][b] = dp[i][b] + aTrace
            }

            // Case 2: B 도둑이 훔침 → B에 흔적 +bTrace
            if b + bTrace < maxB {
                dp[i + 1][b + bTrace] = min(dp[i + 1][b + bTrace], dp[i][b])
            }
        }
    }

    // 결과: 마지막까지 봤을 때 B의 흔적이 m 미만인 모든 경우 중 A의 최소 흔적
    var result = Int.max
    for b in 0..<m {
        result = min(result, dp[itemCount][b])
    }

    return result < n ? result : -1
}
