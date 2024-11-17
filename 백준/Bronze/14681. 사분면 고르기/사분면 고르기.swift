func configureQuadrant() {
    guard let firstInput = readLine(),
          let firstNumber = Int(firstInput),
          let secondInput = readLine(),
          let secondNumber = Int(secondInput) else { return }
    
    if firstNumber > 0 && secondNumber > 0 {
        print("1")
    } else if firstNumber < 0 && secondNumber > 0 {
        print("2")
    } else if firstNumber < 0 && secondNumber < 0 {
        print("3")
    } else {
        print("4")
    }
}

configureQuadrant()