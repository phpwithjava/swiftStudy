import UIKit

//옵셔널 Optional => 널체크 nil check

var myNum1:Int = 10 //실제 값을 초기화 해줌으로 nil아님.
var myNum2:Int? = nil //옵셔널 변수:nil 일수도 있다.

print(myNum1)
print(myNum2)

myNum2 = 20

//권장사항
//myNum2가 nil이므로, 바로 참조하면 exception이 일어남.
//옵셔널 바인딩 (if let 구문)을 사용하여 nil 체크를 할 수 있다.
if let newNum = myNum2{
    print("newNum이 nil이 아님")
}
else{
    print("newNum이 nil임")
}

//언래핑(Unwrapping)
print(myNum2!) // 느낌표는 nil임을 각오하고 강제로 값을 꺼내온다.
//nil이 아님을 확신하고 위험을 감수하고 값을 꺼내옴

//연습문제
//옵셔널 문자열 변수 myStr에 "Hello"라는 값을 할당하고
//옵셔널 바인딩(if let)을 활용하여 출력하시오
//강제 언래핑(!연산자)를 활용하여 출력하시오
var myStr:String? = "Hello"
//myStr = nil
if let realStr = myStr{
    print("realStr은 nil이 아님")
}else{
    print("realStr은 nil임")
}
print(myStr!)
