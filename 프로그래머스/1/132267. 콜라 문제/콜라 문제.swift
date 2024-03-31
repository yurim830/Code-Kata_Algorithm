import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var current = n
    var totalAmount: Int = 0
    while current >= a {
        let newCola = current / a * b
        totalAmount += newCola
        current = current % a + newCola
    }
    return totalAmount
}