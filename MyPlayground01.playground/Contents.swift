import UIKit

/*
 
 Stored Property คือ ค่าคงที่ (constant) หรือตัวแปร (variable) ที่ถูกเก็บเป็นส่วนหนึ่งของ instance ของ class หรือ struct เราสามารถกำหนดค่าเริ่มต้นให้กับ Stored Property และสามารถเปลี่ยนแปลงค่าได้ด้วย
 */

class Person {
   var firstName: String
   let lastName: String
   var age: Int = 0
   
   init(firstName: String, lastName: String) {
      self.firstName = firstName
      self.lastName = lastName
   }
}

let person = Person(firstName: "John", lastName: "Doe")
print(person.firstName)
print(person.lastName)
print(person.age)

person.firstName = "Jane"
print(person.firstName)

/*
 ในตัวอย่างโค้ดข้างต้น เรามี class `Person` ที่มี Stored Property ดังนี้:
 - `firstName` เป็น variable ชนิด `String` ใช้เก็บชื่อของบุคคล
 - `lastName` เป็น constant ชนิด `String` ใช้เก็บนามสกุลของบุคคล
 - `age` เป็น variable ชนิด `Int` ใช้เก็บอายุของบุคคล โดยมีค่าเริ่มต้นเป็น 0

 ใน `init` ของ `Person` เรากำหนดค่าเริ่มต้นให้กับ `firstName` และ `lastName` ผ่านพารามิเตอร์ของ `init`

 เมื่อเราสร้าง instance ของ `Person` ด้วย `let person = Person(firstName: "John", lastName: "Doe")` ค่าของ Stored Property จะถูกกำหนดดังนี้:
 - `firstName` มีค่าเป็น "John"
 - `lastName` มีค่าเป็น "Doe"
 - `age` มีค่าเริ่มต้นเป็น 0

 เราสามารถเข้าถึงค่าของ Stored Property ได้โดยใช้ dot notation เช่น `person.firstName`, `person.lastName`, `person.age`

 และเนื่องจาก `firstName` และ `age` เป็น variable เราจึงสามารถเปลี่ยนแปลงค่าได้ภายหลัง เช่น `person.firstName = "Jane"` ในขณะที่ `lastName` เป็น constant จึงไม่สามารถเปลี่ยนแปลงค่าได้หลังจากกำหนดค่าแล้ว

 Stored Property เป็นวิธีพื้นฐานในการเก็บข้อมูลใน class หรือ struct ในภาษา Swift ซึ่งเราสามารถกำหนดค่าเริ่มต้นและเปลี่ยนแปลงค่าได้ตามต้องการ
 
 */
