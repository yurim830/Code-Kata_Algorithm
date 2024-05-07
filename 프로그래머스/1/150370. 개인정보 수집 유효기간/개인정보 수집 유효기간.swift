import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    // 약관과 유효기간
    var termsInfo: [String:Int] = [:]
    for i in terms {
        let terms = i.split(separator: " ")
        let type = String(terms[0])
        let duration = Int(terms[1])
        termsInfo[type] = duration
    }
    
    var expired: [Int] = []
    for i in (0..<privacies.count) {
        let privacies = privacies[i].split(separator: " ")
        // 약관 유형 구하기
        let type = String(privacies[1])
        
        // 오늘 날짜 구하기
        let todayDateArr = today.split(separator: ".")
        let todayYear = Int(todayDateArr[0]) ?? 0
        let todayMonth = Int(todayDateArr[1]) ?? 0
        let todayDay = Int(todayDateArr[2]) ?? 0
        
        // 시작 날짜 구하기
        let startDateArr = privacies[0].split(separator: ".")
        let startYear = Int(startDateArr[0]) ?? 0
        let startMonth = Int(startDateArr[1]) ?? 0
        let startDay = Int(startDateArr[2]) ?? 0
        
        // 만료 날짜 구하기
        let duration = termsInfo[type] ?? 0
        var endYear = startYear + ((startMonth + duration) / 12)
        var endMonth = (startMonth + duration) % 12
        var endDay = startDay - 1
        print("\(i + 1) 만료 날짜(조정 전): \(endYear).\(endMonth).\(endDay)")
        // 만료 날짜 재조정
        if endDay == 0 {
            endDay = 28
            endMonth -= 1
        }
        if endMonth <= 0 {
            endMonth += 12
            endYear -= 1
        }
        print("\(i + 1) 만료 날짜(조정 후): \(endYear).\(endMonth).\(endDay)")
        
        // 만료됐으면 expired 배열에 추가
        if todayYear > endYear {
            expired.append(i + 1)
            print("year 비교")
            continue
        } else if todayYear == endYear, todayMonth > endMonth {
            expired.append(i + 1)
            print("month 비교")
            continue
        } else if todayYear == endYear, todayMonth == endMonth, todayDay > endDay {
            expired.append(i + 1)
            print("day 비교")
        }
    }
    return expired
}