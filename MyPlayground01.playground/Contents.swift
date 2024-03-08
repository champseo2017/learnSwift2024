import UIKit

/*
 Function Returning a Function
 
 // _operation: (Int, Int) -> Int
 // หมายถึงพารามิเตอร์ของฟังก์ชันที่ชื่อว่า _operation ซึ่งเป็นฟังก์ชันที่รับค่า Int สองตัวและคืนค่าเป็น Int

 // ส่วนของ "_" (underscore) ที่อยู่หน้าชื่อ operation ใช้เพื่อบอกว่าเมื่อเรียกใช้ฟังก์ชัน applyOperation ไม่จำเป็นต้องระบุชื่อพารามิเตอร์
 // นี่เป็นการใช้งานที่เรียกว่า "Anonymous Parameter Names" ใน Swift ทำให้การเรียกใช้ฟังก์ชันสะอาดและเรียบง่ายขึ้น
 
 // toOperand และ andOperand เป็นส่วนของการประกาศพารามิเตอร์ในฟังก์ชัน applyOperation
 // พวกมันเป็นชื่อที่ใช้เพื่ออธิบายวัตถุประสงค์ของพารามิเตอร์แต่ละตัวให้ชัดเจนขึ้น
 */


func applyOperation(_ operation: (Int, Int) -> Int, toOperand operandOne: Int, andOperand operandTwo: Int) -> Int {
   return operation(operandOne, operandTwo)
}

// ฟังก์ชัน add เป็นตัวอย่างของฟังก์ชันที่สามารถส่งเป็นอาร์กิวเมนต์ให้กับ _operation
func add(a: Int, b: Int) -> Int {
   return a + b
}

// เรียกใช้ applyOperation โดยส่งฟังก์ชัน add เป็นอาร์กิวเมนต์ โดยไม่ต้องระบุชื่อพารามิเตอร์สำหรับ operation
let result = applyOperation(add, toOperand: 5, andOperand: 10)
print(result)
