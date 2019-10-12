import UIKit

//클로저 12장 201페이지
//Clouser  :  자바의 람다식,익명 함수와 유사함
//코드 뭉치(함수)를 변수로 만들어서, 매개 변수로 전달이 가능하다.
//변수로 만들어진 코드를 실행할 수 있다.
//함수형 언어의 장점 - 비동기 처리가 가능하다.

//클로저를 만드는 방법
// {(매개변수목록) -> in
//실행문들
//}

//코드뭉치를 변수로 만듬
            //타입이 클로저
var sum:(Int,Int) -> Int =
{
    (a:Int,b:Int) -> Int in
    return a+b
}
print(sum(10,20))

var sub:(Int,Int) -> Int =
{
    (a:Int,b:Int) -> Int in
    return a - b
}
print(sub(10,20))

func calc( a:Int, b:Int, method:(Int,Int)->Int) -> Int{
    return method(a,b)
}
var result = (calc(a: 10, b: 20, method: sum))
var result2  = (calc(a: 10, b: 20, method: sub))

//함수에 클로저를 본체에 바로 선언해서 사용 할 수 있다(1회성) 권장 사항은 아님
var result3 = calc(a: 10, b: 20, method:
{
    (a:Int,b:Int) -> Int in
        return a * b
})

//클로저 사용 예시2

//일반 함수
func printMyName(name1:String,name2:String){
    print("name1:\(name1), name2:\(name2)")
    
}
printMyName(name1: "hong", name2: "tom")
//클로저 변수로 선언해보자
var myFunc:(String,String) -> Void = {
    (name1:String,name2:String) -> Void in
        print("name1:\(name1), name2:\(name2)")
}
myFunc("홍","길동")

var myFunc2:(String,String) -> Void = printMyName(name1:name2:)
myFunc2("연아","준희")
//클로저 변수를 매개 변수로 전달한다.
func runMyFunc(myFunc:(String,String)->Void)
{
    myFunc("태연","윤아")
}
runMyFunc(myFunc: myFunc2)
