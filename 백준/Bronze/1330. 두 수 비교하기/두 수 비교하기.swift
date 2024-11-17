let input = readLine()!
let numbers = input.split(separator: " ").map { Int(String($0))! }

let a = numbers[0]
let b = numbers[1]

if a < b {
    print("<")
} else if a > b {
    print(">")
} else {
    print("==")
}