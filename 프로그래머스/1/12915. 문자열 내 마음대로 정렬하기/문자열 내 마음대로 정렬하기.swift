func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted(by: {(first: String, second: String) -> Bool in
        if first.map({$0})[n] != second.map({$0})[n] {
            return first.map{$0}[n] < second.map{$0}[n]
        } else { return first < second }
    })
}