func printGrade() {
    guard let input = readLine(),
          let score = Int(input) else { return }
    
    if score >= 90 {
        print("A")
    } else if score >= 80 {
        print("B")
    } else if score >= 70 {
        print("C")
    } else if score >= 60 {
        print("D")
    } else {
        print("F")
    }
}

printGrade()