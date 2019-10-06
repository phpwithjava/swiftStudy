import UIKit
//함수
                        //파라메터 이름   인입 파라메터 이름
func hello(name:String, numberOfTimes time:Int) -> String{
    var str:String = ""
    for _ in 0..<time{
        str += "\(name)님 안녕하세요!\n"
    }
    return str
}
print(hello(name: "전수열", numberOfTimes: 10))

//함수안의 함수
func helloGenerator(message:String) -> (String,String) -> String{
    func hello(firstName:String,lastName:String) -> String{
        return firstName + lastName + message
    }
    return hello
}

let hello = helloGenerator(message: "님 안녕하세요")
print(hello("박","성수"))

//함수안의 함수2
func hello2(name:String,time:Int){
    func message(name:String) -> String{
        return "\(name)님 안녕하세요"
    }
    for _ in 0..<time{
        print(message(name: name))
        
    }
}
hello2(name: "박성수", time: 32)

//클로저
func helloGenerator2(message:String) -> (String,String) -> String{
    return {(firstName:String,lastName:String) -> String in
        return firstName + " " + lastName + " " + message
    }
}
let helloGen = helloGenerator2(message: "테스트")
print(helloGen("PARK", "SEONGSOO"))

func helloGenerator3(message:String) -> (String,String) -> String{
    return {
        return $0 + " " + $1 + " " + message
    }
}
let helloGen2 = helloGenerator3(message: "테스트")
print(helloGen2("PARK", "SEONGSOO"))

let helloGen3:(String,String) -> String = {$0 + $1 + "님 안녕하세요"}

print(helloGen3("박","성수"))


//클로저를 이용한 옵셔널 체이닝
//let hello3:(String,String) -> String?
//hello3?("전","수열")

func mainpulate(number:Int,using block:(Int) -> Int) -> Int{
    return block(number)
}
print(mainpulate(number: 14, using: { (number:Int) -> Int in
        return number * 2
}))

print(mainpulate(number: 14, using: {
    return $0 * 2
}))
