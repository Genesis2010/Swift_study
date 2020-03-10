 // 조건문(if-else, switch)
 
 import Swift

 /*
    if - else 구문
    if 조건 {
        조건이 참일 경우 실행
    } else if 조건 {
        위 if 조건이 거짓이고 else if 조건이 참일 경우 실행
    } else {
        위 두 조건이 다 거짓일때 실행
    }
  
    -> 조건에 (괄호) 생략 가능
  */
 
 let i = 20
 
 if i < 10 {
     print("10 미만")
 } else if i > 30 {
     print("30 초과")
 } else {
     print("10~30의 숫자")
 } // 10~30의 숫자
 
 /*
    swift의 조건에는 항상 Bool 타입 -> swift에서는 ture는 1, false 는 0으로 인식하지 않음
    if i { -> i는 Bool 타입이 아닌 Int 타입이기 때문에 오류 발생(아래 경우)
        
    }
  */
 
 /*
    switch 값 { -> 값에는 정수 외의 대부분의 기본 타입을 사용가능
    case 값 :
        실행
    default:
        위 조건이 다 안맞을 경우 실행
    }
  */
 

 switch i {
 case 0:
     print("zero")
 case 1..<100: // .. -> 1이상 100미만
     print("1~99")
 case 100:
     print("100")
 case 101...Int.max: // ... -> 이상 그리고 이하(포함)
     print("over 100")
 default:
     print("unknown")
 } // 1~99
 

 switch "PJH" {
 case "PJY":
     print("PJY")
 case "PSH":
     print("PSH")
 case "yagom":
     print("PJH~")
 default:
     print("unknown")
 } // PJH~
 
 /*
    break -> 명시를 안해도 break가 실행, 생략 가능
  
    case "PJY":
    case "PSH":
        print("PSH")
    
        ->  두개가 같이 실행되는 케이스는 위와 같이하면 오류 발생
    
    case "PJY", "PSH":
        print("PSH")
  
        -> 위와 같이 표기하면 가능
  
    case "PJY":
        print("PJY")
        fallthrough
    case "PSH":
        print("PSH")
    
        -> fallthrough를 통해 break가 없는 것처럼 PJY에서 PSH까지 실행 된다
  */
