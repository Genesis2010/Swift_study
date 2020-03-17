// 옵셔널 - 값이 있을수도 있고 없을 수도 있다

import Swift

/*
   옵셔널을 사용해야하는 이유
   
   1. nil의 가능성을 문서화 하지 않고 코드만으로 설명 가능

   2. 전달받은 값은 옵셔널이 아니라면 nil 체크를 하지 않더라도 안심하고 사용
*/

// 암시적 추출 옵셔널(implicitly Unwrapped Optional)
var implicitlyUnwrappedOptionalValue: Int! = 100

switch implicitlyUnwrappedOptionalValue {
case .none:
    print("옵셔널의 값은 nil 이다")
case .some(let value):
    print("옵셔널의 값은 \(value) 이다")
}

// 변수 처럼 사용 가능, nil 할당 가능
implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

implicitlyUnwrappedOptionalValue = nil

// 변수에 nil 값이 할당되어 있어 연산 불가, 잘못된 접근
// implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

// 일반적인 옵셔널 (Optional)

var optionalValue: Int? = 100

switch optionalValue {
case .none:
    print("옵셔널의 값은 nil 이다")
case .some(let value):
    print("옵셔널의 값은 \(value) 이다")
}

optionalValue = nil

// 옵셔널과 다른 타입은 서로 다른 타입이므로 연산 불가능, 기존 변수처럼 사용 불가
// optionalValue = optionalValue + 1
