import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var spokenWords: Set<String> = []
    
    for (i, w) in words.enumerated() {
        if isExisting(w, in: spokenWords) {
            print("\(w) is existing")
            return getFail(i, n)
        } else if (i > 0 && isIncorrect(words[i - 1], w)) {
            print("\(w) is incorrect to \(words[i - 1])")
            return getFail(i, n)
        } else {
            print("+ \(w)")
            spokenWords.insert(w)
        }
    }
    return [0,0]
}

func isExisting(_ word: String, in spokenWords: Set<String>) -> Bool {
    return spokenWords.contains(word)
}

func isIncorrect(_ formerWord: String, _ latterWord: String) -> Bool {
    let lastChar: Character? = formerWord.last
    let firstChar: Character? = latterWord.first
    return lastChar != firstChar
}

func getFail(_ index: Int, _ n: Int) -> [Int] {
    let person = index % n + 1
    let round = index / n + 1
    return [person, round]
}
