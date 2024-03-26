import Foundation

func solution(_ players: [String], _ callings: [String]) -> [String] {
    var nameToIndex: [String: Int] = [:] // Dictionary to store player names and their indices
    var ranks: [String] = [] // Array to store player names in their current order

    // Initialize nameToIndex and ranks
    for (index, name) in players.enumerated() {
        nameToIndex[name] = index
        ranks.append(name)
    }

    // Perform overtaking
    for overtaker in callings {
        guard let overtakerIndex = nameToIndex[overtaker],
              overtakerIndex > 0 else {
            continue // Skip if overtaker is at the beginning or not found
        }

        let overtakenIndex = overtakerIndex - 1
        (ranks[overtakenIndex], ranks[overtakerIndex]) = (ranks[overtakerIndex], ranks[overtakenIndex])
        nameToIndex[ranks[overtakerIndex]] = overtakerIndex
        nameToIndex[ranks[overtakenIndex]] = overtakenIndex
    }

    return ranks
}