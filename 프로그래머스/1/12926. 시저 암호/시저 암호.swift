func solution(_ s:String, _ n:Int) -> String {
    var upperCase: [Character] = []
    var lowerCase: [Character] = []
    var newString: String = ""
    
    // upperCase loop
    for i in 65...90 {
        upperCase.append(Character(UnicodeScalar(i)!))
    }
    // lowerCase loop
    for i in 97...122 {
        lowerCase.append(Character(UnicodeScalar(i)!))
    }
    
    // 문자 확인 및 밀기
    for character in s {
        if character.isUppercase {                        // 대문자인 경우
            let pushedIndex = (upperCase.firstIndex(of: character)! + n) % 26
            newString += String(upperCase[pushedIndex])
        } else if character.isLowercase {                 // 소문자인 경우
            let pushedIndex = (lowerCase.firstIndex(of: character)! + n) % 26
            newString += String(lowerCase[pushedIndex])
        } else if character == " " {                      // 공백인 경우
            newString += " "
        }
    }
    return newString
}