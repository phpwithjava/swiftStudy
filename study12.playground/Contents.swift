import UIKit

//ex12 함수 11장 181쪽

//절차형 언어: C언어 포트란 코볼 베이직
//객체지향(클래스) 언어:자바, C#
// 함수형 언어:블럭 코딩(함수형 단위로 코드뭉치를 전달) 자바스크립트, 스위프트, 코틀린

//함수 : 코드를 기능 단위로 분리하고, 코드뭉치에 이룸
//func 함수이름(매개변수이름 : 타입1, 매개변수이름2:타입2) -> 반환형{
//
//}

func MyFunc(){
    print("MyFunc() 호출됨.")
}

MyFunc()

//함수의 4가지 패턴
//매개변수가 없고, 반환형이 없을때
func MyFunc1() -> Void{
    print("MyFunc1() 호출됨.")
}

MyFunc1()
//매개변수가 있고 반환형이 없을때
func MyFunc2(name:String){
    print(name)
}

MyFunc2(name:"test")
//매개변수가 없고, 반환형이 있을때
func MyFunc3() -> Int{
    return 10
}

print(MyFunc3())

//매개변수가 있고, 반황형이 있을때
func MyFunc4(name:String) -> Int{
    return 10
}

print(MyFunc4(name: "test"))

//함수의 고급 문법
func printMyName(name1:String,name2:String){
    print("name1:\(name1), name2:\(name2)")
}
printMyName(name1: "홍길동", name2: "변사또")

//매개변수의 기본값
func printMyName2(name1:String,name2:String = "춘향이"){
    print("name1:\(name1), name2:\(name2)")
}
printMyName2(name1: "홍길동")
printMyName2(name1: "홍길동", name2: "변사또") // 기본값 무시

//매개변수에 레이블(별명)을 지정
func printMyName3(hero name1:String,actor name2:String){
    print("name1:\(name1), name2:\(name2)")
}
printMyName3(hero: "tom", actor: "john")

func printMyName4(_ name1:String, _ name2:String){
        print("name1:\(name1), name2:\(name2)")
}
printMyName4("hong", "chun")

//가변 매개변수 - 매개변수타입 뒤에 ...
//name2가 배열임
func printMyName5(name1:String ,name2:String...){
            print("name1:\(name1), name2:\(name2)")
    for name in name2{
        print(name)
    }
}
printMyName5(name1: "홍길동", name2: "변사또","춘향이","이몽룡")

