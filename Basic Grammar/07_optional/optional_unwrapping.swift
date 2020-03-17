// 옵셔널 추출

import Swift

/*
    Optional Binding - 옵셔널 바인딩
     -> 옵셔널의 값을 꺼내오는 방법 중 하나, nil 체크 + 안전한 값 추출
 */


func printName(_ name: String) {
    print(name)
}

var myName: String? = nil

// printName(myName) -> 전달되는 값의 타입(옵셔널)이 다르기 때문에 오류 발생

// if-let 구문(바인딩 하기 위해 사용)
if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}

var yourName: String! = nil

if let name: String = yourName {
    printName(name)
} else {
    print("yourName == nil")
}

/*
    name 상수는 if-let 구문에서만 사용 가능
    printName(name) -> 상수 허용 범위를 벗어났기 때문에 오류 발생
 */

myName = "PJH"
yourName = nil

// yourName 값이 nil이기 때문에 실행되지 않는다
if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}

yourName = "PSH"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)") // PJH and PSH
}

/*
    Force Unwrapping - 강제 추출
     -> 옵셔널의 값을 강제로 추출, 만약 값이 없을경우(nil) 런타임 오류 발생되기 때문에 추천 하지 않음
 */

printName(myName!) // PJH -> 강제추출시 '!' 사용

myName = nil // 15번 줄 참고

// printName(myName!) -> 강제추출시 값이 없으므로 오류 발생

yourName = nil // 26번 줄 참고

/*
    printName(yourName) -> nil 값이 전달되므로 오류 발생
    
    암시적 추출 옵셔널 형식은 처음에 선언할때 부터
    59번줄(myName!) 처럼 가정한다고 선언하기 떄문에 전달인자 값에 !가 필요 없다(68번줄)
 */
