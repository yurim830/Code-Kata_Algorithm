func solution(_ n:Int, _ m:Int) -> [Int] {
    var divisor = min(n, m)
    var dividend = max(n, m)
    var rest: Int = dividend % divisor
    
    // 최대공약수 찾기
    while rest != 0 {
        dividend = divisor
        divisor = rest
        rest = dividend % divisor
    }
    let gcd = divisor
    
    // 최소공배수 찾기
    let lcm = n * m / gcd
    
    return [gcd, lcm]
}