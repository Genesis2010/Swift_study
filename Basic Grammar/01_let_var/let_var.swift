import Swift

/*
    상수와 변수 선언 방법
 
    let(상수 선언)
     -> let 변수명: 타입 = 값
    
    var(변수 선언)
     -> var 변수명: 타입 = 값
    
    값의 타입이 명확하면 타입 생략 가능
     -> let 변수명 = 값
        var 변수명 = 값
 */

let constant: String = "변경이 불가능한 상수 let"
var variable: String = "변경이 가능한 변수 var"

variable = "변수는 나중에 다른 값을 할당할 수 있고"
/*
    constant = "상수는 나중에 값을 변경할 수 없다" -> 오류 발생
    
    상수나 변수 선언 후에 나중에 값을 할당 할 수 있고 이때는 꼭 변수 타입을 명시 해야함
 */

let sum: Int
let x: Int = 1
let y: Int = 2

// 선언 후 첫 할당
sum = x + y

// sum = 1 (값을 저장한 이후에는 값을 바꿀 수 없어 오류 발생)

var name: String

name = "pjh"

// 변수는 다시 값을 할당해도 오류가 발생하지 않음
name = "Park Juh Hyuk"
