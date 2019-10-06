import UIKit

//컬렉션 Collection
// 배열 - Array   (배열+리스트) 순서가 있음       자바:ArrayList
// 딕셔너리 - Dictionary 순서가 없음   키+값(key,value) 자바:Map
// 집합 - Set     순서가 없음 데이터의 중복 허용않음    자바:Set

//Array : 같은 타입의 데이터가 나란히 나열된 형태의 자료형
//          Int배열, String배열, 구조체배열, 클래스 배열
var myArray : Array<Int> = Array<Int>()
myArray.append(10)
myArray.append(20)
myArray.append(30)  //맨끝에만 추가
print(myArray)
dump(myArray)

print(myArray[0])//첫번째 요소만 출력
print(myArray[1])
print(myArray[2])
//print(myArray[3]) //out of range

//포함하고 있는가?
myArray.contains(20)
//배열의 갯수
myArray.count
//요소 삭제
myArray.remove(at: 0)
print(myArray)
myArray.removeLast() //마지막 요소 삭제
print(myArray)
myArray.removeAll()  // 모두 삭제
print(myArray)
myArray.insert(40, at: 0)

//배열을 선언하는 방법들
var myArray2:Array<Int> = Array<Int>()
var myArray3:Array<Int> = [] //2순위
var myArray4:[Int] = [] //1순위
var myArray5 = Array<Int>() //타입추정
var myArray6 = [Int]() //타입추정



