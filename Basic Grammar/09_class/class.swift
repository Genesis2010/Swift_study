// 클래스

import Swift

/*
    클래스 정의
    class 이름 {
        구현 부분
    }
 
    구조체와 클래스는 유사해 보이지만
    구조체는 값 타입, 클래스는 참조 타입
 */

// 프로퍼티 및 메서드

class Sample {
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let immutableProperty: Int = 100 // 불변 프로퍼티
    
    static var typeProperty: Int = 100 // 타입 프로퍼티
    
    // 인스턴스 메서드
    func instanceMethod() {
        print("인스턴스 메서드")
    }
    
    // 타입 메서드
    // static -> 재정의 불가 타입 메서드
    static func typeMethod(){
        print("타입 메서드 (static)")
    }
    
    // class -> 재정의 가능한 타입 메서드
    class func classMethod() {
        print("타입 메서드 (class)")
    }
}

// 클래스 사용방법

var mutableReference: Sample = Sample()

mutableReference.mutableProperty = 200
// mutableReference.immutableProperty = 200 -> 불변 프로퍼티이기 때문에 수정 불가

let immutableReference: Sample = Sample()

immutableReference.mutableProperty = 200 // 구조체와 다르게 let으로 선언해도 가변 프로퍼티 수정 가능
//immutableReference.immutableProperty = 200

//immutableReference = mutableReference

//타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // 타입 메서드 (static)

//mutableReference.typeProperty = 400
//mutableReference.typeMethod()

class Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    class func selfIntroduce(){
        print("학생입니다")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

Student.selfIntroduce() // 학생입니다

var PJH: Student = Student()
PJH.name = "PJH"
PJH.class = "스위프트"
PJH.selfIntroduce() // 저는 스위프트반 PJH입니다

let PSH: Student = Student()
PSH.name = "PSH"
PSH.selfIntroduce() // 저는 스위프트반 PSH입니다
