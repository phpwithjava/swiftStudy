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
