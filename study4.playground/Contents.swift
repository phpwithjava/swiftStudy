import UIKit

//기본 자료형 (타입)
//Bool, Int, UInt, Float, Double, Character, String

//Bool - 논리형 true,false만 있음
//      C언어 스타일처럼 0,1은 아님
var myBool:Bool = true

//Int - 정수형 64bit OS에서는 64bit(8byte)
//           32bit OS에서는 32bit(4byte)
var myInt:Int = 10

//UInt - 정수형 마이너스(음수) 값이 없이 0부터 시작하는 정수값을 표현함.
//UInt를 사용하는 이유: 값이 음수가 없을때
var myUInt:UInt
//Float(4byte),Double(8byte) 실수값 근사값 공식
var myFloat:Float = 3.14
var myDouble:Double = 3.14 //123.456

if( myFloat == myDouble){
    print("두 수가 같습니다.")
}else{
    print("두 수가 다릅니다.")
}

