import UIKit

/*
 การใช้งาน method ต่างๆ ของ Array ใน Swift
 */
var numbers = [5, 2, 7, 3]
// นับจํานวนสมาชิกใน Array
//print(numbers.count)
// 4

// เพิ่มค่าเข้า Array
//numbers.append(9)
//print(numbers)

// ลบค่าออกจาก Array ที่ Index
//numbers.remove(at: 2)
//print(numbers)
// [5, 2, 3]

// ลบค่าตามเงื่อนไข
// $0 คือ ตัวแปรพิเศษที่ใช้แทนค่าแต่ละตัวใน Array ในการเรียกใช้ใน Closure
// กล่าวคือ เมื่อ Loop ผ่าน Array แต่ละค่าจะถูกกําหนดให้ $0 ตามลําดับ เพื่อนํามาเปรียบเทียบเงื่อนไขใน Closure
//numbers.removeAll(where: {$0 < 5})
//print(numbers)

// Tuples in Array
//let xy = [(1, 2), (3, 4)]
//let resultXy = xy.map { (x, y) in
//   return x + y
//}
//print(resultXy)

// แทรกค่าเข้า Array ที่ตําแหน่ง Index
//numbers.insert(4, at: 1)
//print(numbers)
// [5, 4, 2, 7, 3]

// เรียงลําดับ Array
//numbers.sort()
//print(numbers)

// เรียงจากมากไปหาน้อย (descending)
//numbers.sort(by: >)
//print(numbers)

// เรียงตาม property ของ struct/class:
/*
 เมื่อเรียกใช้ students.sort(by:) Swift จะทําการเปรียบเทียบ Object ใน Array ทีละคู่โดยวน Loop ทั้ง Array

 นํา Student ตัวแรกมาเก็บไว้ในตัวแปร $0
 นํา Student ตัวถัดไปมาเก็บไว้ในตัวแปร $1
 นํา $0.age (age ของ Student ตัวแรก) มาเปรียบเทียบกับ $1.age (age ของ Student ตัวที่สอง)
 หาก $0.age < $1.age เป็นจริง จะสลับตําแหน่งของสอง Object นี้ใน Array
 ทําซ้ําไปเรื่อยๆ จน Sort ครบทั้ง Array ก็จะได้ Array ของ Students ที่เรียงลําดับตาม Age
 */
//struct Student {
//   var name: String
//   var age: Int
//}
//
//var students = [
//   Student(name: "Amy", age: 20),
//   Student(name: "Brian", age: 18),
//   Student(name: "Carl", age: 21),
//   Student(name: "David", age: 22)
//]
//
//students.sort(by: {$0.age < $1.age})
//for student in students {
//    print("Student(name: \"\(student.name)\", age: \(student.age))")
//}

// เรียงสุ่ม
//numbers.shuffle()
//print(numbers)

// กลับการเรียงลําดับ
//numbers.reverse()
//print(numbers)
