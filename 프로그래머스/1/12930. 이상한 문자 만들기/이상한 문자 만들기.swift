func solution(_ s:String) -> String {
    var result: String = ""
    var count: Int = 1
    
    for char in s {
        if char == " " {
            result += " "
            count = 1
        } else {
            if count % 2 == 1 {
                result += char.uppercased()
                count += 1
            } else {
                result += char.lowercased()
                count += 1
            }
        }
    }
    return result
}