func solution(_ str1:String, _ str2:String) -> Int {
    let array1: [String] = makeArray(str1)
    let array2: [String] = makeArray(str2)
    
    print("array1: \(array1)\narray2: \(array2)")
    let unionCount = Float(configureCount(true, array1, array2))
    let intersectCount = Float(configureCount(false, array1, array2))
    
    print("union: \(unionCount), intersect: \(intersectCount)")
    return Int(intersectCount/unionCount*65536)
}


func makeArray(_ str: String) -> [String] {
    var words: [String] = []
    for i in 0..<(str.count-1) {
        let idx1 = str.index(str.startIndex, offsetBy: i)
        let idx2 = str.index(after: idx1)
        
        let subStr = String(str[idx1...idx2]).uppercased()
        if isAlphabet(subStr) { words.append(String(subStr)) }
    }
    return words
}

func union(_ set1: Set<String>, _ set2: Set<String>) -> Set<String> {
    return set1.union(set2)
}

func intersect(_ set1: Set<String>, _ set2: Set<String>) -> Set<String> {
    return set1.intersection(set2)
}

func isAlphabet(_ str: String) -> Bool {
    return str.range(of: "^[A-Za-z]+$", options: .regularExpression) != nil
}

func configureCount(_ isUnion: Bool, _ arr1: [String], _ arr2: [String]) -> Int {
    let set1: Set<String> = Set(arr1)
    let set2: Set<String> = Set(arr2)
    var count: Int = 0
    
    if set1.count == 0 && set2.count == 0 { return 1 }
    
    if isUnion {
        let unioned: Set<String> = union(set1, set2)
        print("unioned: \(unioned)")
        for str in unioned {
            let count1 = arr1.filter {$0 == str}.count
            let count2 = arr2.filter {$0 == str}.count
            count += max(count1, count2)
        }
    } else {
        let intersected: Set<String> = intersect(set1, set2)
        print("intersected: \(intersected)")
        for str in intersected {
            let count1 = arr1.filter {$0 == str}.count
            let count2 = arr2.filter {$0 == str}.count
            count += min(count1, count2)
        }
    }
    return count
}