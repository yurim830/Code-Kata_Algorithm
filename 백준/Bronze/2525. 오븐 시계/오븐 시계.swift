func printEndTime() {
    guard let firstInput = readLine(),
          let secondInput = readLine()
    else { return }
    
    let timeArr = firstInput.split(separator: " ").map { Int(String($0))! }
    let cookMin = Int(secondInput)!
    
    let minSum = timeArr[0] * 60 + timeArr[1] + cookMin
    
    var endHour = minSum / 60
    let endMin = minSum % 60
    
    if endHour >= 24 {
        endHour -= 24
    }
    
    print(endHour, endMin)
}

printEndTime()