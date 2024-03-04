func solution(_ s: String) -> String {
    let str: [Character] = s.map {$0}
    let len: Int = s.count
    let lenHalf : Int = len / 2
    return len % 2 == 0 ? String(str[lenHalf - 1 ... lenHalf]) : String(str[lenHalf])
}