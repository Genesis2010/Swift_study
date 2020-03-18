// 구조체

import Swift

/*
    구조체
    
    struct 이름 {
        구현 부분
    }
 
    프로퍼티 -> 변수
    메서드 -> 구조체 안에 있는 함수
 */

struct Sample {
    
    // 인스턴스 프로퍼티
    var mutableProperty: Int = 100 // 가변 인스턴스 프로퍼티
    let immutableProperty: Int = 100 // 불변 인스턴스 프로퍼티
    
    static var typeProperty: Int = 100 // 타입 프로퍼티
    
    // 인스턴스 메서드
    func instanceMethod() {
        print("인스턴스 메서드")
    }
    
    // 타입 메서드
    static func typeMethod() {
        print("타입 메서드")
    }
}

// 구조체 사용방법

var mutable: Sample = Sample()

mutable.mutableProperty = 200
// mutable.immutbaleProperty = 200 -> let으로 선언된 프로퍼티 이므로 오류 발생


// 불변 인스턴스
let immutable: Sample = Sample()

/*
    immutable.mutableProperty = 200
     -> let으로 선언한 인스턴스는 가변 프로퍼티여도 변경 불가
    
    immutable.immutableProperty = 200
     -> 불변 프로퍼티이므로 변경 불가
 */

// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod()

/*
    mutable.typeProperty = 400
    mutbale.typeMethod()
 
    타입 프로퍼티 및 메서드는 구조체 타입이 사용할 수 있다
    인스턴스에서 사용 불가
 */
 
struct Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    // 정해저 있는 예약어 같은경우 `` 를 적어주면 사용 가능
    
    static func selfIntroduce(){
        print("학생입니다")
    }
    
    func selfIntroduce(){
        print("저는 \(self.class)반 \(name)입니다")
    }
}

Student.selfIntroduce() // 학생입니다

var PJH: Student = Student()
PJH.name = "PJH"
PJH.class = "스위프트"
PJH.selfIntroduce() // 저는 스위프트반 PJH입니다

let PSH: Student = Student()

/*
    PSH.name = "PSH"
     -> 불변 인스턴스이므로 프로퍼티 값 변경 불가
 */

PSH.selfIntroduce() // 저는 Swift반 unknown입니다 -> 메서드는 호출 가능
