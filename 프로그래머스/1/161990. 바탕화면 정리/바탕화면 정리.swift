import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    let arrWallpaper: [[Character]] = wallpaper.map { Array($0) }
    var height: [Int] = []
    var width: [Int] = []
    
    for (i, val) in arrWallpaper.enumerated() {
        if let w = val.firstIndex(of: "#") {
            width.append(w)
            width.append(val.lastIndex(of: "#")!)
            height.append(i)
        }
    }
    
    return [height.min()!, width.min()!, height.max()! + 1, width.max()! + 1]
}