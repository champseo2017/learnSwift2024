import UIKit

/*
 ในภาษา Swift, class และ structure มีความคล้ายคลึงกันหลายอย่าง เช่น:
 - มี property เพื่อเก็บค่า
 - มี method เพื่อให้ functionality
 - มี subscript เพื่อเข้าถึงค่า
 - มี initializer เพื่อกำหนดค่าเริ่มต้น
 - สามารถ extend เพื่อขยาย functionality เพิ่มเติมได้
 - สามารถ conform to protocol เพื่อให้ functionality มาตรฐาน

 อย่างไรก็ตาม class มี feature บางอย่างที่ structure ไม่มี ได้แก่:
 - Inheritance: class สามารถ inherit feature จาก class อื่นได้ ในขณะที่ structure ไม่สามารถ inherit กันได้
 - Type casting: สามารถตรวจสอบและแปลงชนิดของ instance ของ class ได้ at runtime ส่วน structure จะตรวจสอบและแปลงชนิดได้ at compile time
 - Deinitialization: class สามารถมี deinitializer เพื่อคืนทรัพยากรเมื่อ instance ถูกทำลายได้ แต่ structure ไม่สามารถมี deinitializer ได้เพราะไม่ใช่ reference type
 - Reference counting: class สามารถมี reference ได้มากกว่าหนึ่งอันชี้ไปยัง instance เดียวกัน

 โดยทั่วไปแล้ว class จะมีความซับซ้อนกว่า structure ดังนั้นในการสร้าง data type ใหม่ ส่วนใหญ่เราจะใช้ structure หรือ enumeration มากกว่า class
 */

// คลาส
class Person {
   var name: String
   var age: Int
   
   init(name: String, age: Int) {
      self.name = name
      self.age = age
   }
   
   func introduce() {
      print("Hello, my name is \(name) and I'm \(age) years old.")
   }
}

// โครงสร้าง
struct Point {
   var x: Int
   var y: Int
   
   func toString() -> String {
      return "\(x), \(y)"
   }
}

// การสร้างอินสแตนซ์ของคลาส
let person = Person(name: "John", age: 25)
person.introduce()

// การสร้างอินสแตนซ์ของโครงสร้าง
let point = Point(x: 3, y: 5)
print(point.toString())
