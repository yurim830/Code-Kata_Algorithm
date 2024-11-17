func printAlarm() {
    guard let input = readLine() else { return }
    
    let times = input.split(separator: " ").map { Int(String($0))! }
    
    var hour = times[0]
    var min = times[1] - 45
    
    if min < 0 {
        hour -= 1
        min += 60
    }
    
    if hour < 0 {
        hour += 24
    }
    
    print(hour, min)
}

printAlarm()