import UIKit

//문자와 문자열 9장 139쪽

//String타입 : 스위프트 구조체 타입
//NSString타입 : NS계열 클래스 타입

var myString:String = "hong"
//다중 문자열
var multipleString :String = """
다중
문자열
입니다
"""

//문자열의 길이
var myName:String = "hong"
print(myName.count)

//문자열의 비교
let str1:String = "Apple"
let str2:String = "Banana"

if str1 == str2{ // .equals() 함수 안써도 됨
    print("문자열이 서로 같습니다")
}else{
    print("문자열이 서로 다릅니다")
}
let result = str1.compare(str2)
switch result{
case .orderedSame:
    print("같음")
case .orderedAscending, .orderedDescending:
    print("값이 다름")
default:
    print("그외")
}
//문자열의 연결
print(str1 + str2)
print(str1.appending(str2))

//문자열에서 특정 문자 하나를 가져올 때
let text = "abc" //타입 추정에 의해서 String
let index1:String.Index =  text.index(text.startIndex, offsetBy: 1)
let char:Character = text[index1]


for ch in text{
    print(ch)
}
var index2 = 0
for ch in text{
    if(index2==1){
        print(ch)
    }
    index2 += 1
    
}

let char2:Character = "A"
//let char3:Character = "AB" //Error
let char4 = Character("A")

//문자열애 추가
var myName2:String = "tom"
//문자를 하나 추가함
myName2.insert("!", at: myName2.endIndex)
//문자열을 추가함.
myName2.insert(contentsOf: "My", at: myName2.index(myName2.startIndex, offsetBy: 0))

let myName3 = "My" + myName2

//형변환 NSString -> String
let myNSString:NSString = "john"
let myString2:String = String(myNSString)
let myString3:String = myNSString as String

//문자열의 치환(바꾸기)
var myString4:String = "Swift Programming"
let resultString1:String = myString4.replacingOccurrences(of: "Swift", with: "iOS")

//NSString(변경불가) NSMutableString(변경가능)
//String,String

//문자열 삭제
var myString5:String = "Swift Programming"
myString5.removeAll()
myString5 = ""

//문자 하나를 지움
var myString6:String = "Swift Programming"
let resultString2 = myString6.remove(at: myString6.startIndex)
print(myString6)

//문자열을 지움
var myString7:String = "Swift Programming"
let removeRange = myString7.index(myString7.startIndex, offsetBy: 0) ... myString7.index(myString7.startIndex, offsetBy: 5)
myString7.removeSubrange(removeRange)
print(myString7)

var myString8:String = "Swift Programming"
var arrayCh:[Character] = []
var index = 0
for ch in myString8{
    if index > 5{
        arrayCh.append(ch)
    }
    index += 1
}
let newCharString = String(arrayCh)

//문자열 검색
let myString9 = "Swift Programming"
if myString9.contains("Swift"){
    print("Swift 문자열이 있음")
}else{
    print("Swift 문자열이 없음")
}

if let result = myString9.range(of: "Swift"){
    print("Swift 문자열이 있음")
}else{
    print("Swift 문자열이 없음")
}

//문자열 분리
let myString10 = "1,2,3,4,5"
let list:[String] = myString10.components(separatedBy: ",")

for ch in list{
    print(ch)
}
