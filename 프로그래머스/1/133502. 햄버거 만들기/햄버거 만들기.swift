import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var ingredientStack: [Int] = []
    let recipe = [1, 2, 3, 1]
    var count: Int = 0
    
    for i in ingredient {
        ingredientStack.append(i)
        
        if Array(ingredientStack.suffix(4)) == recipe {
            count += 1
            ingredientStack.removeLast(4)
        }
    }
    return count
}