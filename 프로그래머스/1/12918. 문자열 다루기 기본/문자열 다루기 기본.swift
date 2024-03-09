func solution(_ s:String) -> Bool {
    guard s.count == 4 || s.count == 6 else {
        return false
    }
    
    if let sInt = Int(String(s)) {
        return true
    }
    else {return false }
}