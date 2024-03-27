import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    let park = park.map {Array($0)}
    let routes = routes.map { $0.split(separator: " ")}
    
    // 시작 좌표 찾기
    var location: [Int] = []
    for (yIndex, row) in park.enumerated() {
        if let xIndex = row.firstIndex(of: "S") {
            location = [yIndex, xIndex]
            break
        }
    }

    // 동서남북 델타값 사전
    let deltas: [Character: (Int, Int)] = ["N": (-1, 0), "S": (1, 0), "W": (0, -1), "E": (0, 1)]
    
    // 산책하기
    for i in routes {  // ex) i = ["S", "2"]
        //let direction = i.first! // [Substring]에 .first 붙이면 substring? 반환.
        let direction = i[0].first!
        let (deltaY, deltaX) = deltas[direction]! // Substring에 .first 붙이면 Character? 반환.
        let distance = Int(i[1])!
        var temp = location
        
        temp[0] += deltaY * distance
        temp[1] += deltaX * distance
        
        guard temp[0] >= 0 && temp[0] < park.count && temp[1] >= 0 && temp[1] < park[0].count else {
            continue
        }
        
        temp = location
        for step in 1...(Int(i[1])!) {
            temp[0] += deltaY
            temp[1] += deltaX
            if park[temp[0]][temp[1]] == "X" {
                temp = location
                break
            }
        }
        location = temp
    }
    return location
}