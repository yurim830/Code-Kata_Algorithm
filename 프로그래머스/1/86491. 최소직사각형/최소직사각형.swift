import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    // 명함 사이즈를 내림차순(w, h)으로 정렬
    var orderedSizes: [[Int]] = sizes.map { $0.sorted(by: >)}
    
    // 최대 너비, 높이 구하기
    var maxW: Int = 0
    var maxH: Int = 0
    
    for i in orderedSizes{
        if i[0] > maxW {
            maxW = i[0]
        }
        if i[1] > maxH {
            maxH = i[1]
        }
    }
    
    return maxW * maxH
}