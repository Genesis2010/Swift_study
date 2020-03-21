// 열거형

import Swift

/*
    enum은 타입이므로 대문자 카멜케이스를 사용하여 이름을 정의
    각 case는 소문자 카멜케이스로 정의, 그 자체가 고유의 값
 
    enum 이름 {
        case 이름1
        case 이름2
        case 이름3, 이름4
    }
 */

// 열거형 사용 방법
enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun // 연속해서 원하는 만큼 사용 가능
}

var day: Weekday = Weekday.mon // 처음에 선언할때는 항상 타입 표기
day = .tue // 축약형

print(day)

switch day{
case .mon, .tue, .wed, .thu:
    print("평일!")
case Weekday.fri:
    print("불금!")
case .sat, .sun:
    print("주말!")
}

/*
    모든 열거형 case를 포함하면 default를 구현할 필요 없음
    case를 하나라도 빼먹으며 default를 구현
 */


/*
    원시값
    C 언어의 enum처럼 정수값을 가질 수도 있다
    rawValue를 사용하면 된다
    case 별로 각각 다른 값을 가져야한다
 */

enum Fruit: Int { // 정수형으로 사용할려면 타입을 명시
    case apple = 0
    case grape = 1
    case peach
    // 자동으로 1이 증가된 값이 할당
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)") // Fruit.peach.rawValue == 2

/*
    정수 타입 뿐만 아니라 Hashalbe 프로토콜을 따르는 모든 타입이
    원시값의 타입으로 지정될 수 있다
 */

enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case universtiy
}

print("School.middle.rawValue == \(School.middle.rawValue)") // School.middle.rawValue == 중등

print("School.university.rawValue == \(School.universtiy.rawValue)") // School.universtiy.rawValue == university, 값이 없다면 케이스 이름을 갖고 온다

/*
    원시값을 통한 초기화
 
    rawValue를 통해 초기화 할 수 있음
    rawValue가 case에 해당하지 않을 수 있으므로 rawValue를 통해 초기화 한 인스턴스는 옵셔널 타입
 */

// let appel: Fruit = Fruit(rawValue: 0) -> 옵셔널로 선언 하지 않으면 오류 발생, nil 값이 있을 수 있음
let apple: Fruit? = Fruit(rawValue: 0)

if let orange: Fruit = Fruit(rawValue: 5) {
    print("rawValue 5에 해당하는 케이스는 \(orange)입니다")
} else {
    print("rawValue 5에 해당하는 케이스가 없습니다")
} // rawValue 5에 해당하는 케이스가 없습니다

// 메서드

enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self {
        case . mar, .apr, .may:
            print("봄")
        case .jun, .jul, .aug:
            print("여름")
        case .sep, .oct, .nov:
            print("가을")
        case .dec, .jan, .feb:
            print("겨울")
        }
    }
}

Month.mar.printMessage() // 봄
