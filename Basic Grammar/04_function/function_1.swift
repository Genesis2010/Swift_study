import Swift

/*
    함수 선언
    func 함수이름(매개변수1: 매개변수1타입, 매개변수2: 매개변수2타입) -> 반환타입{
        함수 구현 부분
        return 반환값
    }
 */

func sum(a: Int, b: Int) -> Int{
    return a + b
}

/*
    반환값이 없는 함수
    func 함수이름(매개변수1: 매개변수1타입, 매개변수2: 매개변수2타입) -> Void{
        함수 구현 부분
    }
 */

func print(a: String) -> Void {
    print(a)
}

/*
    매개변수가 없는 함수
    func 함수이름() -> 반환타입{
        함수 구현 부분
        return 반환값
    }
 */

func maxint() -> Int{
    return Int.max
}

/*
   매개변수, 반환값이 없는 함수
   func 함수이름() -> Void{
       함수 구현 부분
   }
*/

func hello() -> Void{
    print("hello")
}

// 함수 호출 방법

sum(a:1 , b:2) // 3

print(a: "pjh") // pjh

maxint() // int의 최대값을 반환 시킴

hello() // hello
