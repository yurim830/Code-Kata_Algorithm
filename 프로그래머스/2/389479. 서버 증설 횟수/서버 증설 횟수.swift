import Foundation

func solution(_ players:[Int], _ m:Int, _ k:Int) -> Int {
    var servers: [Int:Int] = [:]
    var sum: Int = 0
    
    for (index, playerCount) in players.enumerated() {
        let existingServers = servers[index] ?? 0
        let serversToAdd: Int = {
            let a = neededServers(playerCount, m) - existingServers
            return a > 0 ? a : 0
        }()
        sum += serversToAdd
        if serversToAdd > 0 {
            for i in 0..<k {
                let existing = servers[index + i] ?? 0
                servers[index + i] = existing + serversToAdd
            }
        }
    }
    return sum
}

func neededServers(_ playerCount:Int, _ m:Int) -> Int {
    return Int(playerCount / m)
}