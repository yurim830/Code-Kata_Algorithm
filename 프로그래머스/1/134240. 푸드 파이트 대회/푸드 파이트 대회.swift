import Foundation

func solution(_ food:[Int]) -> String {
    var foodForOne: String = ""
    for (index, amount) in food.enumerated() {
        if index > 0 {
            foodForOne += String(repeating: Character(String(index)), count: amount / 2)
        }
    }
    var result = foodForOne + "0" + foodForOne.reversed()
    return result
}