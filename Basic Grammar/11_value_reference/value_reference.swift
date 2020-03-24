// 클래스, 구조체/열거형 비교

import Swift

/*
    Class -> 전통적인 OOP 관점에서의 클래스, 단일 상속
             (인스턴스/타입) 메서드, 프로퍼티
             참조 타입, Apple 프레임워크의 대부분의 큰 뼈대는 모두 클래스로 구성
        
    Struct -> C 언어 등의 구조체보다 다양한 기능, 상속 불가
              (인스턴스/타입) 메서드, 프로퍼티
              값 타입, Swift의 대부분의 큰 뼈대는 모두 구조체로 구성
 
    Enum -> Enumeration, 유사한 종류의 여러 값을 유의미한 이름으로 한 곳에 모아 정의(ex. 요일, 상태값, 월)
            열거형 자체가 하나의 데이터 타입, 열거형의 case 하나마다 전부 하나의 유의미한 값으로 취급
            선언 키워드(eum)
 
 
    구조체는 언제 사용하나?
     -> 연관된 몇몇의 값들을 모아서 하나의 데이터타입으로 표헌하고 싶을때
        다른 객체 또는 함수 등으로 전달될 때 참조가 아닌 복사를 원할 때
        자신을 상속할 필요가 없거나, 자신이 다른 타입을 상속받을 필요가 없을때
        Apple 프레임워크에서 프로그래밍을 할 때에는 주로 클래스를 많이 사용
 
    참조 타입(Reference) -> 데이터를 전달할 때 값의 메모리 위치를 전달
    값 타입(Value) -> 데이터를 전달할 때 값을 복사하여 전달
 */

struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

// 구조체

let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

print("first struct instance property : \(firstStructInstance.property)") // 1
print("secound struct instance property : \(secondStructInstance.property)") // 2

// 클래스

let firstClassReference = ReferenceType()
var secondClassReference = firstClassReference
secondClassReference.property = 2

print("first class reference property : \(firstClassReference.property)") // 2 -> 값이 복사되는게 아니라 참조값이 복사되므로 2가 됌
print("second class reference property : \(secondClassReference.property)") // 2
