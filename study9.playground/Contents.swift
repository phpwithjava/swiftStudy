import UIKit

//반복문 105 쪽

//for문, while문, repeat-while문
// 60%  40%         1%

//for문
// for(int i = 0; i<10; i++)
// for(초기화 ;조건문 ;증감문)
for i in 1...10{
    print(i)
}

for i in 0..<100{
    print(i)
}

for i in (0...100).reversed(){
    i
    print(i+2)
}

for i in stride(from: 0, to: 100, by: 3).reversed(){
    print(i)
}

//배열 Array
var arrayInt = [1,2,3,4,5]

for i in arrayInt{
    print(i)
}

//딕셔너리 Dictionary
let person = ["john":100,"tom":200]
for (name,money) in person{
    print(name)
    print(money)
}

//while문
//초기화
//while 조건
//{
//  수행문...
//  증감문
//}
var index = 0
while index < 10 {
    print(index)
    index += 1
}

//break: 반복문 탈출.
//continue: 반복문 귀한

//무한 반복문
while true {
    print(index)
    index += 1
    if index > 100{
        break
    }
}

for i in 1...100{
    if i % 2 == 0{
        continue
    }
    print(i)
}

//repeat-while문 : 적어도 한번은 수행됨.
//초기화
//repeat{
// 수행문
// 증감문
//}while(조건문)

var index2 = 0
repeat{
    print(index2)
    index2 += 1
}while index2 < 100

//이중 for문 : for문안에 for문 들어감
for i in 2...9{
    for j in 1...9{
        print("\(i) * \(j) = \(i*j)")
    }
}

// 다중 for문에서 한번에 Loop를 빠져나가고 싶을때
// 레이블을 사용한다.
OUTTER:
for i in 1...10{
    for j in 1...100{
        if i > 3{
            break OUTTER
        }
        print("\(i), \(j)")
    }
}
