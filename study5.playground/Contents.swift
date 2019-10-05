import UIKit

//스위프트 객체 타입
//Any, AnyObject,nil

//Any 타입: 모든 데이터 타입을 쓸 수 있음
//      Int,Float,String
//      Class, Struct, Enum, Array(콜렉션)
// 스위프의 기본 자료형(Int,Float,String,Bool)은 구조체다.
// Primitive가 아님
var myAny:Any = 100 // 정수 타입 데이터
myAny = "홍길동" //문자열 타입
myAny = true

//AnyObject 타입 : 모든 클래스를 담는다.
class MyClass{
    var name = "홍길동"
}
class MyClass2{
    var age = 30
}
var myAnyObject:AnyObject = MyClass()
myAnyObject = MyClass2()

//nil 타입 : null(NULL)과 같음. 비어있는 객체(레퍼런스-참조) 변수임. 주소값이 nil임.
var myNil : Int? = nil
//nil이 될수도 있는 변수는 옵셔널 변수로 지정해야 됨!



