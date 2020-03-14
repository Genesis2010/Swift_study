/* 반복문 */

import Swift

// var integers : [Int] = [1, 2, 3]
var integers = [1, 2, 3]

// let people : [String : Int] = ["PJH": 1, "PSH": 2, "PJY": 3]
let people = ["PJH": 24, "PSH": 22, "PJY": 54]

/*
    for - in 구문
 
    for item in itmes {
        실행 구문
    }
 */

for integer in integers {
    print(integer)
}

for (name , age) in people {
    print("\(name): \(age)")
}

/*
    while 구문
    
    while condition { // 조건에는 항상 bool 타입이 들어가야한다
        실행 구문
    }
 */

while integers.count > 1 {
    integers.removeLast()
    print(integers) // [1 ,2] -> [1]
}
