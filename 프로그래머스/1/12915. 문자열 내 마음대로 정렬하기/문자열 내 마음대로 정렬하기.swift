func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted(by: {
        let firstN: Character = Array($0)[n]
        let secondN: Character = Array($1)[n]
        return firstN != secondN ? firstN < secondN : $0 < $1
    })
}