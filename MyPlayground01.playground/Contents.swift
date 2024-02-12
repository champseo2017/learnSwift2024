import UIKit

/*
 ตัวดําเนินการเปรียบเทียบ (Comparison Operators)

 Swift รองรับตัวดําเนินการเปรียบเทียบดังนี้:

 - เท่ากับ (==)
 - ไม่เท่ากับ (!=)
 - มากกว่า (>)
 - น้อยกว่า (<)
 - มากกว่าหรือเท่ากับ (>=)
 - น้อยกว่าหรือเท่ากับ (<=)

 ตัวอย่าง:

 let x = "Class"
 if x == "Class" {
   print("My Class")
 } else {
   print("I’m sorry \(x), but I don’t recognize you")
 }

 นอกจากนี้ ยังสามารถเปรียบเทียบ tuples ได้ด้วยหาก tuples ทั้งสองมีชนิดเดียวกัน

 (3, "Bird")  < (9, "Animal") // เปรียบเทียบเฉพาะค่าแรก ส่วน Bird และ Animal ไม่ถูกเช็ค

 */

let x = "Class"
if x == "Class" {
    print("My Class")
} else {
    print("I' m sorry \(x), but I dont't recognize you")
}
