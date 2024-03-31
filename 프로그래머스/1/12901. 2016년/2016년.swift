func solution(_ a:Int, _ b:Int) -> String {
    var year: [Int] = Array(1...7).map {$0 % 2 == 1 ? 31 : 30 } + Array(8...12).map {$0 % 2 == 0 ? 31 : 30 }
    year[1] = 29
    
    let day: [Int:String] = [1:"FRI", 2: "SAT", 3: "SUN", 4: "MON", 5: "TUE", 6:"WED" ,0: "THU"]
    let daysTotal: Int = year[0..<(a - 1)].reduce(0, +) + b
    return day[daysTotal % 7]!
}