import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let len = answers.count
    let person1 = [1, 2, 3, 4, 5]
    let person2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let person3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var point1 = 0
    var point2 = 0
    var point3 = 0
    
    for (i, answer) in answers.enumerated() {
//        if person1[i % 5] == answer {
//            point1  += 1
//        }
        point1 = grade(person1, point: point1, index: i % 5, answer: answer)
        point2 = grade(person2, point: point2, index: i % 8, answer: answer)
        point3 = grade(person3, point: point3, index: i % 10, answer: answer)
    }
    
    let points = [point1, point2, point3]
    let max = points.max()
    
    var result: [Int] = []
    
    for (i, point) in points.enumerated() {
        if point == max {
            result.append(i + 1)
        }
    }
    
    return result
}

func grade(_ person: [Int], point: Int, index: Int, answer: Int) -> Int {
    if person[index] == answer {
        return point + 1
    }
    return point
}

func isMax(point: Int, maxPoint: Int) -> Bool {
    point == maxPoint
}
