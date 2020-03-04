import Swift

/*
    Any - 모든 타입을 지칭
    AnyObject -  모든 클래스 타입을 지칭하는 프로토콜
    nil - 없음을 의미
 */

// Any
var Anytype: Any = 100
Anytype = "어떤 타입도 가능"
Anytype = 1.23

/*
    let Doubletype: Double = Anytype  -> 오류 발생
    Any 타입은 Double 타입이 아니기 때문에 할당할 수 없음
 */

// AnyObject
class Classtype {}

var AnyObjecttype: AnyObject = Classtype()

/*
    AnyObjecttype = 1.23-> 오류 발생
    AnyObject는 클래스의 인스턴스만 가능하기 때문에 다른 타입은 불가능
 */

//nil
/*
 
    Anytype = nil
    Objecttype = nil -> 둘 다 오류 발생
 

    nil은 다른 언어의 null 등과 유사한 표현
    Anytype는 Any 타입, AnyObjecttype는 AnyObject 타입이기 때문에 nil을 할당 할 수 없음 
*/

