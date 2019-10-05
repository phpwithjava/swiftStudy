import UIKit

//연산자 Operator
//산비논대 : 산성비가 논에 온대
//산술 연산자:+,-,*,/,%(나머지)
//비교연산자: ==(같은가) !=(같지않은가) > < <=(같거나 작다) >=(크거나 같다)
//논리 연산자: &&(AND) ||(OR)
//대입 연산자: = (오른쪽 값을 왼쪽으로 대입) += , -= , *=, /=

//산술 연산자: + - * / % (기호 연산자)
//          결과는 값으로 나옴.
var myNum:Int = 10
print(myNum / 3) // 몫
print(myNum % 3)
//비교 연산자 : ==,!=,>,<,>=,<=
//          결과는 true,false로 나옴
//논리 연산자: && ||
//          결과는 true/false로 나옴

// &&(AND) 연산 true && true => true
// true && false => false
// false && true => false
// false && false => false
// 둘다 true일때만 true

// ||(OR)연산  true || true => true
// true || false => true
// false || true => true
// false || false => false
//둘중의 하나만 true일때도 true

//!(NOT)
//false => true
//true => false

//연습문제
//정수형 변수 23456가 있다.
//나머지 연산자와 나누기 연산자를 이용하여
//만의 자릿수,첫의 자릿수, 백의 자릿수, 십의 자릿수,일의 자릿수를 출력하시오
var num:Int = 23456
var temp:Int

temp = num / 10000
print("만의 자리 \(temp)")
num %= 10000

temp = num / 1000
print("천의 자리 \(temp)")
num %= 1000

temp = num / 100
print("백의 자리 \(temp)")
num %= 100

temp = num / 10
print("십의 자리 \(temp)")
num %= 10

temp = num
print("일의 자리 \(temp)")


//물음표 연산자 ?:삼항 연산자
var myBool:String =  true ?  "true" : "false"

//?? 쌍물음표 연산자 : nil이면 대입되는 값
let name:String? = nil
print(name ?? "홍길동")

//범위 연산자
//시작값 ... 종료값으로 구성됨.
let range = 0...3
dump(range)//0,1,2,3

let range2 = 0..<3
dump(range2)//0,1,2

for index in range2{
    print(index)
}

for index in range2.reversed(){
    print(index)
}






