import UIKit

/*
    기본 데이터 타입
    Bool, Int, UInt, Float, Double, Character, String
 */

var Booltype: Bool = true
Booltype = false
/*
    Booltype = 0
    Booltype = 1 -> 둘 다 오류 발생
 
    Swift에서는 bool 타입의 변수에 int형인 정수의 값을 넣을 수가 없음
 */

var Inttype: Int = -100
// Inttype = 100.1 (int형 변수에 double형 값을 넣을 수가 없음, 오류 발생)


var UInttype: UInt = 100 // 부호가 없는 정수형 -> 양수를 의미

/*
    UInttype = -100 -> 음수를 저장 시킬 수 없음
    Inttype = 100
    UInttype = Inttype -> 양수로 저장 가능해 보이지만 UInt형 변수에 Int형 변수의 값을 할당 할 수 없음, 오류 발생
*/

var Floattype: Float = 3.14
Floattype = 3 // Float형 변수에 소수가 아닌 정수 값을 저장시킬 수 있음


var Doubletype: Double = 3.14
Doubletype = 3 // Double형 변수에도 정수 값을 저장시킬 수 있음
// someDouble = someFloat -> Double형 변수에 Float 값을 할당 시킬 수 없음, 오류 발생 (Double -> 8바이트, Float -> 4바이트)


var Charactertype: Character = "X"
Charactertype = "Y"
Charactertype = "Z"
// Charactertype = "XYZ" -> 문자 하나가 아닌 여러개 일 경우 String 타입으로 선언해야함, 오류 발생
print(Charactertype)

// String
var Stringtype: String = "XYZ"
Stringtype = Stringtype + "ABC"
print(Stringtype)

/*
    Stringtype = Charactertype -> 문자 타입에서 문자열 타입으로 값을 저장할 수 없음, 오류 발생
 
    Stringtype = """
        여러줄을 저장해야한다면
        큰따옴표 3개를 첫과 끝에 적어야 함
        (단, 첫줄과 마지막 줄에는 아무것도 적어서는 안됌)
    """

    Stringtype = """오류 발생
    오류 발생"""
*/
