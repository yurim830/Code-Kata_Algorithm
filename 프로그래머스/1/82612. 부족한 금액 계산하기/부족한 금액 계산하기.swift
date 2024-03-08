import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var totalPrice: Int = Array(1...count).reduce(0) {$0 + ($1 * price)}
    var answer:Int64 = Int64(money - totalPrice)
    
    return answer < 0 ? -answer : 0
}