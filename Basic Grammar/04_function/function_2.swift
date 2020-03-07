import Swift

/*
    매개 변수 기본값
    func 함수이름(매개변수1: 매개변수1타입, 매개변수2: 매개변수2타입 = 매개변수 기본값) -> 반환타입 {
        함수 구현 부분
        return 반환값
    }
    
    -> 기본값을 갖는 경우 매개변수 목록 중 가장 뒤쪽에 있는게 좋다
 */

func name (person: String, myname: String = "Park Jun Hyuk") -> Void {
    print("hello \(person), my name is \(myname)")
}

// 기본값을 갖는 매개변수는 함수 호출 시 생략이 가능
name(person: "friend") // hello friend, my name is Park Jun Hyuk
name(person: "friend", myname: "PJH") // hello friend, my name is PJH

/*
    전달인자 레이블
    func 함수이름(전달인자 레이블 매개변수1: 매개변수1타입, 전달인자 레이블 매개변수2: 매개변수2타입) -> 반환타입 {
        함수 구현 부분
        return 반환값
    }
 
    -> 전달인자 레이블은 매개변수 역할을 좀 더 명확히 표시할때 사용
       함수 내부에서는 매개변수를 사용 하고 함수 외부에서는 전달인자 레이블을 사용
 */

func name (to person: String, from myname: String = "Park Jun Hyuk") -> Void {
    print("hello \(person), my name is \(myname)")
}

// 함수 호출 시 전달인자 레이블을 사용 -> 함수이름이 같지만 다르게 사용이 가능(중복 가능)
name(to: "friend", from: "PJH") // hello friend, my name is PJH


/*
    가변 매개함수
    func 함수이름(매개변수1: 매개변수1타입, 매개변수2: 매개변수2타입...) -> 반환타입 {
        함수 구현 부분
        return 반환값
    }
 
    -> 전달 받을 매개변수의 개수가 명확하지 않을때 사용(개수 제한 없음)
       가변 매개변수는 함수 당 한번만 사용 가능
 */

func hello(person: String, myname: String...) -> String{
    return "hello \(person), my name is \(myname)"
}

print(hello(person: "friend", myname: "Park Jun Hyuk", "PJH")) // hello friend, my name is ["Park Jun Hyuk" , "PJH"]
