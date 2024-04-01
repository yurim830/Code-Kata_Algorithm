func solution(_ n:Int) -> Int {
    var fn = [0,1]
    // 피보나치수를 K로 나눈 나머지는 항상 주기를 갖는다.
    let newN = n % 1234567
    for i in 2...newN {
        let n = fn.reduce(0, +)
        // 나머지 연산의 성질 (a + b) % m = ((a % m) + (b % m)) % m
        fn.append(n % 1234567) // "signal: illegal instruction (core dumped)"에러 방지
        fn.removeFirst()
    }
    return fn[1] % 1234567
}