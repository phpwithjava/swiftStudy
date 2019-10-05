
//ex02

import UIKit

//3장 변수의 상수 47페이지
//변수:Variable - 메모리 공간(4byte)
//상수:Constant - 메모리 공간이되 값이 한번 들어가면 변경이 불가
//Swift에서 변수 var 예약어 (Keyword)를 사용
//          상수 let 사용함.

//변수의 선언
//var 변수이름 : 타입(자료형)
var myStr:String = "스위프트"

//타입은 생략가능 - 타입 추정에 의해서 결정됨
var myStr2 = "iOS 앱" //문자열 타입으로 지정됨

//변수의 이름은 개발자가 지정하되 룰이 있음.
//Camel Text - 단어의 첫글자만 대문자로 지정함.
//예) myNameLength <=> mynamelength
//맨 첫글자를 소문자로 하는 경우: 변수,함수이름
//맨 첫글자를 대문자로 하는 경우: 클래스 이름,구조체 열거형,익스텐션

// 예) MyNameLength
//가독성 !!! - 개발의 80%의 시간은 Reading
//                20%의 시간은 Typing


//코드의 이름을 지을 때 영문법의 어순 따른다.
//주어 동사 목적어 : 영어 - 원칙
//주어 목적어 동사 : 한국말
//변수를 선언할떄 값(초기값)을 함께 준다.
var myIbnt:Int = 10 //메모리 공간
//변수 선언시에는 값을 주지 않고, 나중에 값을 설정함.
var myFloat:Float
myFloat = 3.14
//변수 여러개 설정할 때
var myInt1,myInt2,myInt3 : Int
myInt1 = 10
myInt2 = 20
myInt3 = 30

//상수
//let 상수이름: 타입(자료형)
let myName:String = "홍길동"
//myName = "변사또 // 값을 변경할 수 없음
//상수를 사용하는 이유: 고정하는 값을 보장하기 위해
//원주률 PI = 3.141592 변경이 안됨
//중력 가속도 9.8m/s^2



