import UIKit

/*
 Function Returning a Function
 */

// ฟังก์ชัน makeAdder รับพารามิเตอร์ amount และคืนค่าเป็นฟังก์ชันอื่น (ฟังก์ชัน adder)
/*
 `(amount: Int) -> (Int) -> Int` คือประกาศของฟังก์ชันใน Swift ที่แสดงถึงประเภทของฟังก์ชัน `makeAdder` โดยมีรายละเอียดดังนี้:

 - `amount: Int` หมายถึง `makeAdder` รับพารามิเตอร์ `amount` ที่เป็นประเภท `Int` เข้ามา

 - `-> (Int) -> Int` หมายถึง `makeAdder` จะคืนค่าเป็นฟังก์ชันอื่น ซึ่งฟังก์ชันนั้นรับพารามิเตอร์เป็น `Int` และคืนค่าเป็น `Int`

 โดยสรุป, `(amount: Int) -> (Int) -> Int` บอกว่า `makeAdder` เป็นฟังก์ชันที่รับ `Int` หนึ่งตัว (คือ `amount`) และคืนค่าเป็นฟังก์ชันอื่นที่รับ `Int` หนึ่งตัวและคืนค่าเป็น `Int` ด้วย ซึ่งเป็นการสร้างฟังก์ชันที่สามารถเพิ่มค่าตัวเลขด้วยค่า `amount` ที่กำหนดไว้ล่วงหน้าได้.
 */
func makeAdder(amount: Int) -> (Int) -> Int {
   // ฟังก์ชัน adder ภายใน makeAdder รับพารามิเตอร์ number และคืนค่าเป็นผลบวกของ number กับ amount
   func adder(number: Int) -> Int {
      return number + amount
   }
   return adder // makeAdder คืนค่าฟังก์ชัน adder เมื่อถูกเรียกใช้
}

// สร้างฟังก์ชันใหม่ที่เพิ่มค่าด้วย 10
let addTen = makeAdder(amount: 10)
let result = addTen(5) // เรียกใช้ฟังก์ชัน addTen กับค่า 5, ผลลัพธ์คือ 15 (5 + 10)
print(result)
