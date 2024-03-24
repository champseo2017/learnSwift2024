import UIKit

/*
 ประเภทของ Conditional Statements คือ Switch และ Optional

 */

// ตัวอย่างการใช้งาน Switch
var number = 3

switch number {
case 1:
   print("หนึ่ง")
case 2:
   print("สอง")
case 3:
   print("สาม")
default:
   print("อื่นๆ")
}


// ตัวอย่างการใช้งาน Optional
var optionalNumber: Int? = nil

// ตรวจสอบว่า optionalNumber มีค่าหรือไม่
if let number = optionalNumber {
   print("มีค่าเป็น \(number)")
} else {
   print("ไม่มีค่า")
}
