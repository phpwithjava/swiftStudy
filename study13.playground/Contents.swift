import UIKit

//콜렉션 Collection   14장  213쪽 
// 배열 - Array (배열+리스트) 순서가 있음              자바:ArrayList
// 딕셔너리 - Dictionary  키+값(key,value) 순서없음   자바:Map
// 집합 - Set 순서가 없음   데이터의 중복 허용않음.       자바:Set

// Array : 같은 타입의 데이타가 나란히 나열된 형태의 자료형
//         Int배열, String배열, 구조체 배열, 클래스 배열
var myArray : Array<Int> = Array<Int>()
myArray.append( 10 )
myArray.append( 20 )
myArray.append( 30 ) //맨 끝에만 추가함.
print( myArray )
dump( myArray )
print( myArray[0] ) //첫번째 요소만 출력
print( myArray[1] )
print( myArray[2] )
//print( myArray[3] ) out of range 잘못된 인덱스

//포함하고 있는가?
myArray.contains( 20 )
//배열의 갯수
myArray.count
//요소 삭제
myArray.remove(at: 0)
print( myArray )
myArray.removeLast() //마지막 요소 삭제
print( myArray )
myArray.removeAll() //모두 삭제
print( myArray )
//요소 추가
myArray.insert(40, at: 0)

//배열을 선언하는 방법들
var myArray2: Array<Int> = Array<Int>()
var myArray3: Array<Int> = [] //2순위
var myArray4: [Int] = [] //1순위
var myArray5 = Array<Int>() //타입추정
var myArray6 = [Int]() //타입추정

myArray4.append( 10 )
myArray4.append( 20 )

//빈 배열인지?
if myArray4.isEmpty {
    print("비어있음")
}else{
    print("비어 있지 않음")
}

for myInt in myArray4 {
    print( myInt )
}

//연습문제
//names라는 문자열타입 배열을 만들고,
//"tom"을 추가하고
//"john"을 추가하고
//"hana"을 추가하고
//배열의 갯수를 출력하시오.
//모든 요소를 출력하시오.
//"john"만 출력하시오.
//"tom"을 포함하고 있는지 true/false로 출력하시오.
var names:[String] = []
names.append("tom")
names.append("john")
names.append("hana")
names.count
for name in names {
    print( name )
}
names[1]
names.contains("tom")

//배열 요소의 인덱스를 가져오기 "john" => 1
if let index = names.firstIndex(of: "john") {
    print("john의 위치는 ", index)
}

//NS계열 : NSArray 수정불가, NSMutableArray 수정가능
//Swift계열 : Array 수정가능

//NSArray to Array
var myNSArray = NSArray(objects: "a", "b", "c")
var myNSMutableArray = NSMutableArray(array: myNSArray)
if let mySwiftArray = myNSMutableArray as NSArray as? [String] {
    print( mySwiftArray)
}

//배열의 값 비교
let myArray7 = [1,2,3,4,5] //타입추정 [Int]
let myArray8 = [1,2,3,4,5]
if myArray7 == myArray8 {
    print("값이 같음")
}else{
    print("값이 다름")
}

//배열의 값을 치환(바꾸기)
var myArray9 = ["A", "B", "C"]
myArray9.replaceSubrange(0..<2, with: ["X", "Y"])
print( myArray9 )

//배열의 값을 정렬 sort
var myArray10 = ["A", "C", "B"]
let sortedArray = myArray10.sorted()
let reverseSortedArray = Array(myArray10.sorted().reversed())

//특정 범위에서 값을 추출해서 배열로 저장
let rangeArray = sortedArray[0...1]


//구조체(클래스)를 배열에 넣고 빼기.
struct MyStruct {
    var name = "hong"
    var age = 30
    func myFunc() {
        print("myFunc()")
    }
}
//var nameArray : Array<String> = []
//var ageArray: Array<Int> = []
var myStructArray : Array<MyStruct> = []
var myStruct1 = MyStruct() //스트럭트를 객체로 만듦.(인스턴스)
myStruct1.name = "tom"
myStruct1.age = 40
var myStruct2 = MyStruct()
myStruct2.name = "john"
myStruct2.age = 20
myStructArray.append( myStruct1 )
myStructArray.append( myStruct2 )
var item1 = myStructArray[0]
print( item1.name )
print( item1.age )
var item2 = myStructArray[1]
print( item2.name )
print( item2.age )



//딕셔너리 Dictionary  자바:Map
// key - value로 이루어진 데이타 타입
// [ "key1": value, "key2":value2,  ]

let myDic: [String:String] = ["key1":"value1", "key2":"value2"] //타입 추정에 의해서 [String:String]
print( myDic )

//요소에 접근하는 법
print( myDic["key1"]! ) //키로 값을 가져온다.
print( myDic["key2"]! )

var nameDic = ["name1":"홍길동", "name2":"변사또", "name3":"춘향이"]
//순서가 없음. 순차적이지 않음.
//새로운 요소를 추가함.
nameDic["name4"] = "이몽룡"
print( nameDic )

//딕셔너리 요소를 출력
for (key, value) in nameDic {
    print( key )
    print( value )
}

//딕셔너리 요소의 삭제
nameDic.removeValue(forKey: "name2")
print( nameDic )

//딕셔너리 갯수
nameDic.count

//NS계열: NSDictionary 수정불가 NSMutalbeDictionary 수정가능
//Swift계열: Dictionary

//집합 Set : 데이타의 중복을 허용하지 않음.
var mySet: Set<Int> = Set<Int>()
mySet.insert( 10 )
mySet.insert( 20 )
mySet.insert( 30 )
print( mySet )
mySet.insert( 30 ) //데이타를 중복해서 넣을때, 무시됨.
print( mySet )

print( mySet.isEmpty ) //비어있는가?
print( mySet.contains( 10 )) //10을 포함하는가?

var mySet2: Set<Int> = [10,20,30]
var mySet3: Set<Int> = [30,40,50]
//합집합
var setSum = mySet2.union( mySet3 )
//교집합
var setCross = mySet2.intersection( mySet3 )
//차집합
var setSub = mySet2.subtracting( mySet3 )

//NS계열 : NSSet 변경불가, NSMutableSet 변경가능
//Swift계열:  Set  let,   Set  var

