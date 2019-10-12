import UIKit

//클로저 12장 201쪽
//클로저의 변형(유연성)


//일반함수 : 클로저를 매개 변수로 받음
func calc(a:Int,b:Int,method:(Int,Int) -> Int) -> Int{
    return method(a,b)
}
//일반함수 실행
var result2 = calc(a: 10, b: 20, method: {
    (a:Int,b:Int) -> Int in
    return a + b
})
//후행 클로저(Trailling Closure)
var result = calc(a:10,b:20){
    (a:Int,b:Int) -> Int in
    return a + b
}

//반환형 생략 가능
result = calc(a: 10, b: 20, method: {
    (a:Int,b:Int)/* -> Int*/ in
    return a + b //타입 추정에 의해 Int형으로 반환

})
//매개변수 생략 가능
result = calc(a: 10, b: 20, method: {
    return $0 + $1 //타입 추정에 의해 Int형으로 반환

})

//후행 클로저(Trailling Closure)에서도 반환형 생략 가능
result = calc(a:10,b:20){
    (a:Int,b:Int)/* -> Int*/ in
    return a + b
}
//후행 클로저에서 매개변수 생략 가능
result = calc(a:10,b:20){
    //(a:Int,b:Int)/* -> Int*/ in
    return $0 + $1
}

//return 키워드도 생략 가능(끝 문장을 리턴문으로 생각한다)
result = calc(a:10,b:20){
    $0 + $1
}
