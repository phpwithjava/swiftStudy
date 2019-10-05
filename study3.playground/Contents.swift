import UIKit

//주석문(코멘트)
//개발자의 설명이 추가되는 문장이며, 실행에는 영향이 없음.

//한줄짜리 주석문
/*
    여러줄 주석문1
    여러줄 주석문2
 */

//출력문 print,dump debugPrint
var myName:String = "홍길동"
print(myName)
dump(myName)
debugPrint(myName)

class Student{
    var name = "홍길동"
}
var objStudent = Student()
dump(objStudent)
//문자열 보간 Interpolation
var age = 10
//문자열 데이터는 쌍딴옴표 ""로 표현한다.
"저의 나이는 \(age)입니다."
