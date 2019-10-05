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

