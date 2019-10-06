
import UIKit

//값 타입과 참조 타입
// value type과 reference type
//value type : 변수 안에 실제 데이터가 저장되어 있음
//reference type : 실제 데이터가 들어있는 메모리 공간의 주소값을 저장함.
//값 복사시 주소값을 전달함

//swift에서는
//값 타입 : 구조체, 기본 자료형(Int, Float, String, Bool)이 구조체,
//      열거형(Enum),딕셔너리(Dictionary),배열(Array), 집합(Set)
//참조 타입: 클래스,NS류의 자료형들(레거시 Objective-C에서 사용) : NSString, NSArray, NSNumber : NS(Next Step)

//스위프트는 값 타입을 선호함.

//구조체(Struct):변수와 함수, 값타입, 익스텐션, 값 전달이 간편
//클래스(Class):변수와 함수, 참조타입, 상속가능(override), 익스텐션(기능확장), 값 복사가 불편
//열거형(Enum):변수와 함수, 값타입, 익스텐션

struct MyStruct{
    var age  = 30
    
}

class MyClass{
    var age = 30
}

//call by value
let myStruct = MyStruct() //new 없어짐
var myStruct2 = myStruct // 복사 : 값도 함께 복사됨
myStruct2.age = 33
print(myStruct.age)

//call by reference
let myClass = MyClass()
var myClass2 = myClass
myClass2.age = 33
print(myClass.age)
