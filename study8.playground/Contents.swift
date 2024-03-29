import UIKit

//조건문 if switch

//스위프트에서 조건문 if문에서는 소괄호가 없어졌다.
//반드시 중괄호(braket)를 해야된다.
var num:Int = 0
// if문
if num < 10{
    print("10보다 작음.")
}

//if else문
if num > 10{
    print("10보다 큼")
}else{
    print("10보다 작거나 같음")
}

//if else elseif
if num > 10{
    print("10보다 큼")
}else if num == 5{
    print("5이다")
}else{
    print("그외의 수")
}

//난수 발생(임의의 수)
let randomNum:UInt32 = arc4random_uniform(10)
//0~대입수 - 1까지 발생
//현재같은 경우 0~9까지 랜덤수 발생
print(randomNum)


// 연습문제
// 20부터 50까지의 랜덤수를 발생시켜
// 30보다 작으면 , "30보다 작음"
// 40보다 작으면, "40보다 작음"
// 50보다 작으면, "50보다 작음" 이렇게 출력하시오
let rndNum:UInt32 = arc4random_uniform(31) + 20
if(rndNum < 30){
    print("30보다 작음")
    
}else if(rndNum < 40){
    print("40보다 작음")
}else if(rndNum < 50){
    print("50보다 작음")
}

//guard let문, guard else문
func myFunc(){
    var myString:String? = nil //"hong"
    guard let newStr = myString, myString == "hong" else{
        print("올바른 이름이 아님")
        return
    }
    //수행문들 ...
    
}
myFunc()

//switch case문 : break문 생략됨

let randomNum3:UInt32 = arc4random_uniform(10)
switch randomNum3{
case 0:
    print("0")
case 1...5:
    print("1,2,3,4,5")
case 6..<10:
    print("6,7,8,9")
default:
    print("그 외의 값",randomNum3)
}
var name:String = "hong"
switch name{ // 문자열을 넣을 수 있음
case "hong":
    print("hong임.")
default:
    print("그 외")
}
